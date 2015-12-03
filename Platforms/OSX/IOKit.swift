
var kIOBSDNameKey: String { get }
var kIOBSDNamesKey: String { get }
var kIOBSDMajorKey: String { get }
var kIOBSDMinorKey: String { get }
var kIOBSDUnitKey: String { get }
typealias IOReturn = kern_return_t
var kIOReturnSuccess: Int32 { get }

/*!
 * @typedef IODataQueueEntry
 * @abstract Represents an entry within the data queue
 * @discussion This is a variable sized struct.  The data field simply represents the start of the data region.  The size of the data region is stored in the size field.  The whole size of the specific entry is the size of a UInt32 plus the size of the data region.  
 * @field size The size of the following data region.
 * @field data Represents the beginning of the data region.  The address of the data field is a pointer to the start of the data region.
 */
struct _IODataQueueEntry {
  var size: UInt32
  var data: (UInt8, UInt8, UInt8, UInt8)
  init()
  init(size: UInt32, data: (UInt8, UInt8, UInt8, UInt8))
}
typealias IODataQueueEntry = _IODataQueueEntry

/*!
 * @typedef IODataQueueMemory
 * @abstract A struct mapping to the header region of a data queue.
 * @discussion This struct is variable sized.  The struct represents the data queue header information plus a pointer to the actual data queue itself.  The size of the struct is the combined size of the header fields (3 * sizeof(UInt32)) plus the actual size of the queue region.  This size is stored in the queueSize field.
 * @field queueSize The size of the queue region pointed to by the queue field.
 * @field head The location of the queue head.  This field is represented as a byte offset from the beginning of the queue memory region.
 * @field tail The location of the queue tail.  This field is represented as a byte offset from the beginning of the queue memory region.
 * @field queue Represents the beginning of the queue memory region.  The size of the region pointed to by queue is stored in the queueSize field.
 */
struct _IODataQueueMemory {
  var queueSize: UInt32
  var head: UInt32
  var tail: UInt32
  var queue: (IODataQueueEntry)
  init()
  init(queueSize: UInt32, head: UInt32, tail: UInt32, queue: (IODataQueueEntry))
}
typealias IODataQueueMemory = _IODataQueueMemory

/*!
 * @typedef IODataQueueAppendix
 * @abstract A struct mapping to the appendix region of a data queue.
 * @discussion This struct is variable sized dependent on the version.  The struct represents the data queue appendix information.
 * @field version The version of the queue appendix.
 * @field msgh Mach message header containing the notification mach port associated with this queue.
 */
struct _IODataQueueAppendix {
  var version: UInt32
  var msgh: mach_msg_header_t
  init()
  init(version: UInt32, msgh: mach_msg_header_t)
}
typealias IODataQueueAppendix = _IODataQueueAppendix

/*!
 * @function IODataQueueDataAvailable
 * @abstract Used to determine if more data is avilable on the queue.
 * @param dataQueue The IODataQueueMemory region mapped from the kenel.
 * @result Returns true if data is available and false if not.
 */
func IODataQueueDataAvailable(dataQueue: UnsafeMutablePointer<IODataQueueMemory>) -> Bool

/*!
 * @function IODataQueuePeek
 * @abstract Used to peek at the next entry on the queue.
 * @discussion This function can be used to look at the next entry which allows the entry to be received without having to copy it with IODataQueueDequeue.  In order to do this, call IODataQueuePeek to get the entry.  Then call IODataQueueDequeue with a NULL data pointer.  That will cause the head to be moved to the next entry, but no memory to be copied.
 * @param dataQueue The IODataQueueMemory region mapped from the kernel.
 * @result Returns a pointer to the next IODataQueueEntry if one is available.  Zero is returned if the queue is empty.
 */
func IODataQueuePeek(dataQueue: UnsafeMutablePointer<IODataQueueMemory>) -> UnsafeMutablePointer<IODataQueueEntry>

/*!
 * @function IODataQueueDequeue
 * @abstract Dequeues the next available entry on the queue and copies it into the given data pointer.
 * @discussion This function will dequeue the next available entry on the queue.  If a data pointer is provided, it will copy the data into the memory region if there is enough space available as specified in the dataSize parameter.  If no data pointer is provided, it will simply move the head value past the current entry.
 * @param dataQueue The IODataQueueMemory region mapped from the kernel.
 * @param data A pointer to the data memory region in which to copy the next entry data on the queue.  If this parameter is 0 (NULL), it will simply move to the next entry.
 * @param dataSize A pointer to the size of the data parameter.  On return, this contains the size of the actual entry data - even if the original size was not large enough.
 * @result Returns kIOReturnSuccess on success.  Other return values possible are: kIOReturnUnderrun - queue is empty, kIOReturnBadArgument - no dataQueue or no dataSize, kIOReturnNoSpace - dataSize is too small for entry.
 */
func IODataQueueDequeue(dataQueue: UnsafeMutablePointer<IODataQueueMemory>, _ data: UnsafeMutablePointer<Void>, _ dataSize: UnsafeMutablePointer<UInt32>) -> IOReturn

/*!
 * @function IODataQueueWaitForAvailableData
 * @abstract Wait for an incoming dataAvailable message on the given notifyPort.
 * @discussion This method will simply wait for an incoming message on the given notifyPort.  Once it is received, the return from mach_msg() is returned.
 * @param dataQueue The IODataQueueMemory region mapped from the kernel.
 * @param notificationPort Mach port on which to listen for incoming messages.
 * @result Returns kIOReturnSuccess on success.  Returns kIOReturnBadArgument if either dataQueue is 0 (NULL) or notiryPort is MACH_PORT_NULL.  Returns the result of the mach_msg() listen call on the given port.
 */
func IODataQueueWaitForAvailableData(dataQueue: UnsafeMutablePointer<IODataQueueMemory>, _ notificationPort: mach_port_t) -> IOReturn

/*!
 * @function IODataQueueAllocateNotificationPort
 * @abstract Allocates and returns a new mach port able to receive data available notifications from an IODataQueue.
 * @discussion This port is intended to be passed down into the kernel and into an IODataQueue to allow it to send the appropriate notification.  The returned mach port is allocated with a queue limit of one message.  This allows only one mach message to be queued up at a time.  The IODataQueue code is written with the restriction in mind and will only queue up a message if no messages alread have been sent.
 * @result Returns a newly allocated mach port on success.  On failure, it returns MACH_PORT_NULL.
 */
func IODataQueueAllocateNotificationPort() -> mach_port_t

/*!
 * @function IODataQueueEnqueue
 * @abstract Enqueues a new entry on the queue.
 * @discussion This method adds a new data entry of dataSize to the queue.  It sets the size parameter of the entry pointed to by the tail value and copies the memory pointed to by the data parameter in place in the queue.  Once that is done, it moves the tail to the next available location.  When attempting to add a new entry towards the end of the queue and there isn't enough space at the end, it wraps back to the beginning.<br>  If the queue is empty when a new entry is added, the port specified in IODataQueueSetNotificationPort will be used to send a message to the client process that data is now available. <br> <b>Please note that using this method without mapped memory create from an IOSharedDataQueue will result in undefined behavior. </b>
 * @param dataQueue The IODataQueueMemory region mapped from the kernel created from an IOSharedDataQueue.
 * @param data Pointer to the data to be added to the queue.
 * @param dataSize Size of the data pointed to by data.
 * @result Returns kIOReturnSuccess on success.  Other return values possible are: kIOReturnOverrun - queue is full.
 */
@available(OSX 10.5, *)
func IODataQueueEnqueue(dataQueue: UnsafeMutablePointer<IODataQueueMemory>, _ data: UnsafeMutablePointer<Void>, _ dataSize: UInt32) -> IOReturn

/*!
 * @function IODataQueueSetNotificationPort
 * @abstract Creates a simple mach message targeting the mach port specified in port.
 * @discussion This message is sent when data is added to an empty queue.  It is to notify another user process that new data has become available.  <b>Please note that using this method without mapped memory create from an IOSharedDataQueue will result in undefined behavior. </b>
 * @param dataQueue The IODataQueueMemory region mapped from the kernel created from an IOSharedDataQueue.
 * @param notifyPort The mach port to target with the notification message.
 * @result Returns kIOReturnSuccess on success.  Returns kIOReturnBadArgument if either dataQueue is 0 (NULL).
 */
@available(OSX 10.5, *)
func IODataQueueSetNotificationPort(dataQueue: UnsafeMutablePointer<IODataQueueMemory>, _ notifyPort: mach_port_t) -> IOReturn
var kIOBundleInfoDictionaryVersionKey: String { get }
var kIOBundleExecutableKey: String { get }
var kIOBundleIdentifierKey: String { get }
var kIOBundleVersionKey: String { get }
var kIOBundleDevelopmentRegionKey: String { get }
var kIOBundleNameKey: String { get }
var IOKIT: Int32 { get }
typealias IOOptionBits = UInt32
typealias IOFixed = Int32
typealias IOVersion = UInt32
typealias IOItemCount = UInt32
typealias IOCacheMode = UInt32
typealias IOByteCount32 = UInt32
typealias IOByteCount64 = UInt64
typealias IOPhysicalAddress32 = UInt32
typealias IOPhysicalAddress64 = UInt64
typealias IOPhysicalLength32 = UInt32
typealias IOPhysicalLength64 = UInt64
typealias IOVirtualAddress = mach_vm_address_t
typealias IOByteCount = IOByteCount32
typealias IOLogicalAddress = IOVirtualAddress
typealias IOPhysicalAddress = IOPhysicalAddress32
typealias IOPhysicalLength = IOPhysicalLength32
var IOPhysSize: Int32 { get }
struct IOPhysicalRange {
  var address: IOPhysicalAddress
  var length: IOByteCount
  init()
  init(address: IOPhysicalAddress, length: IOByteCount)
}
struct IOVirtualRange {
  var address: IOVirtualAddress
  var length: IOByteCount
  init()
  init(address: IOVirtualAddress, length: IOByteCount)
}
typealias IOAddressRange = IOVirtualRange
struct IONamedValue {
  var value: Int32
  var name: UnsafePointer<Int8>
  init()
  init(value: Int32, name: UnsafePointer<Int8>)
}
typealias IOAlignment = UInt32
typealias io_object_t = mach_port_t
typealias io_name_t = (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
typealias io_string_t = (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
typealias io_string_inband_t = (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
typealias io_struct_inband_t = (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
typealias io_user_scalar_t = UInt64
typealias io_user_reference_t = UInt64
typealias io_scalar_inband_t = (io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t)
typealias io_async_ref_t = (io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t)
typealias io_scalar_inband64_t = (io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t, io_user_scalar_t)
typealias io_async_ref64_t = (io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t)
typealias io_connect_t = io_object_t
typealias io_enumerator_t = io_object_t
typealias io_iterator_t = io_object_t
typealias io_registry_entry_t = io_object_t
typealias io_service_t = io_object_t
var kIODefaultMemoryType: Int { get }
var kIODefaultCache: Int { get }
var kIOInhibitCache: Int { get }
var kIOWriteThruCache: Int { get }
var kIOCopybackCache: Int { get }
var kIOWriteCombineCache: Int { get }
var kIOCopybackInnerCache: Int { get }
var kIOMapAnywhere: Int { get }
var kIOMapCacheMask: Int { get }
var kIOMapCacheShift: Int { get }
var kIOMapDefaultCache: Int { get }
var kIOMapInhibitCache: Int { get }
var kIOMapWriteThruCache: Int { get }
var kIOMapCopybackCache: Int { get }
var kIOMapWriteCombineCache: Int { get }
var kIOMapCopybackInnerCache: Int { get }
var kIOMapUserOptionsMask: Int { get }
var kIOMapReadOnly: Int { get }
var kIOMapStatic: Int { get }
var kIOMapReference: Int { get }
var kIOMapUnique: Int { get }
var kIOMapPrefault: Int { get }
var kIOMapOverwrite: Int { get }
var kNanosecondScale: Int { get }
var kMicrosecondScale: Int { get }
var kMillisecondScale: Int { get }
var kSecondScale: Int { get }
var kTickScale: Int { get }
var kIOConnectMethodVarOutputSize: Int { get }
typealias IODeviceNumber = UInt32
var kIOKitBuildVersionKey: String { get }
var kIOKitDiagnosticsKey: String { get }
var kIORegistryPlanesKey: String { get }
var kIOCatalogueKey: String { get }
var kIOServicePlane: String { get }
var kIOPowerPlane: String { get }
var kIODeviceTreePlane: String { get }
var kIOAudioPlane: String { get }
var kIOFireWirePlane: String { get }
var kIOUSBPlane: String { get }
var kIORegistryEntryIDKey: String { get }
var kIOServiceClass: String { get }
var kIOResourcesClass: String { get }
var kIOClassKey: String { get }
var kIOProbeScoreKey: String { get }
var kIOKitDebugKey: String { get }
var kIOProviderClassKey: String { get }
var kIONameMatchKey: String { get }
var kIOPropertyMatchKey: String { get }
var kIOPathMatchKey: String { get }
var kIOLocationMatchKey: String { get }
var kIOParentMatchKey: String { get }
var kIOResourceMatchKey: String { get }
var kIOMatchedServiceCountKey: String { get }
var kIONameMatchedKey: String { get }
var kIOMatchCategoryKey: String { get }
var kIODefaultMatchCategoryKey: String { get }
var kIOUserClientClassKey: String { get }
var kIOMapperIDKey: String { get }
var kIOUserClientCrossEndianKey: String { get }
var kIOUserClientCrossEndianCompatibleKey: String { get }
var kIOUserClientSharedInstanceKey: String { get }
var kIOUserClientCreatorKey: String { get }
var kIOPublishNotification: String { get }
var kIOFirstPublishNotification: String { get }
var kIOMatchedNotification: String { get }
var kIOFirstMatchNotification: String { get }
var kIOTerminatedNotification: String { get }
var kIOGeneralInterest: String { get }
var kIOBusyInterest: String { get }
var kIOAppPowerStateInterest: String { get }
var kIOPriorityPowerStateInterest: String { get }
var kIOPlatformDeviceMessageKey: String { get }
var kIOCFPlugInTypesKey: String { get }
var kIOCommandPoolSizeKey: String { get }
var kIOMaximumPriorityCountKey: String { get }
var kIOMaximumBlockCountReadKey: String { get }
var kIOMaximumBlockCountWriteKey: String { get }
var kIOMaximumByteCountReadKey: String { get }
var kIOMaximumByteCountWriteKey: String { get }
var kIOMaximumSegmentCountReadKey: String { get }
var kIOMaximumSegmentCountWriteKey: String { get }
var kIOMaximumSegmentByteCountReadKey: String { get }
var kIOMaximumSegmentByteCountWriteKey: String { get }
var kIOMinimumSegmentAlignmentByteCountKey: String { get }
var kIOMaximumSegmentAddressableBitCountKey: String { get }
var kIOIconKey: String { get }
var kIOBundleResourceFileKey: String { get }
var kIOBusBadgeKey: String { get }
var kIODeviceIconKey: String { get }
var kIOPlatformSerialNumberKey: String { get }
var kIOPlatformUUIDKey: String { get }
var kIONVRAMDeletePropertyKey: String { get }
var kIONVRAMSyncNowPropertyKey: String { get }
var kIONVRAMActivateCSRConfigPropertyKey: String { get }
var kIODTNVRAMPanicInfoKey: String { get }
var kIOBootDeviceKey: String { get }
var kIOBootDevicePathKey: String { get }
var kIOBootDeviceSizeKey: String { get }
var kOSBuildVersionKey: String { get }
var kFirstIOKitNotificationType: Int { get }
var kIOServicePublishNotificationType: Int { get }
var kIOServiceMatchedNotificationType: Int { get }
var kIOServiceTerminatedNotificationType: Int { get }
var kIOAsyncCompletionNotificationType: Int { get }
var kIOServiceMessageNotificationType: Int { get }
var kLastIOKitNotificationType: Int { get }
var kIOKitNoticationTypeMask: Int { get }
var kIOKitNoticationTypeSizeAdjShift: Int { get }
var kIOKitNoticationMsgSizeMask: Int { get }
var kOSNotificationMessageID: Int { get }
var kOSAsyncCompleteMessageID: Int { get }
var kMaxAsyncArgs: Int { get }
var kIOAsyncReservedIndex: Int { get }
var kIOAsyncReservedCount: Int { get }
var kIOAsyncCalloutFuncIndex: Int { get }
var kIOAsyncCalloutRefconIndex: Int { get }
var kIOAsyncCalloutCount: Int { get }
var kIOMatchingCalloutFuncIndex: Int { get }
var kIOMatchingCalloutRefconIndex: Int { get }
var kIOMatchingCalloutCount: Int { get }
var kIOInterestCalloutFuncIndex: Int { get }
var kIOInterestCalloutRefconIndex: Int { get }
var kIOInterestCalloutServiceIndex: Int { get }
var kIOInterestCalloutCount: Int { get }
var kOSAsyncRef64Count: Int { get }
var kOSAsyncRef64Size: Int { get }
typealias OSAsyncReference64 = (io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t, io_user_reference_t)
struct OSNotificationHeader64 {
  var size: mach_msg_size_t
  var type: natural_t
  var reference: OSAsyncReference64
  init()
}
struct IOServiceInterestContent64 {
  var messageType: natural_t
  var messageArgument: (io_user_reference_t)
  init()
  init(messageType: natural_t, messageArgument: (io_user_reference_t))
}
var kOSAsyncRefCount: Int { get }
var kOSAsyncRefSize: Int { get }
typealias OSAsyncReference = (natural_t, natural_t, natural_t, natural_t, natural_t, natural_t, natural_t, natural_t)
struct OSNotificationHeader {
  var size: mach_msg_size_t
  var type: natural_t
  var reference: OSAsyncReference
  init()
}
struct IOServiceInterestContent {
  var messageType: natural_t
  var messageArgument: (UnsafeMutablePointer<Void>)
  init()
  init(messageType: natural_t, messageArgument: (UnsafeMutablePointer<Void>))
}
struct IOAsyncCompletionContent {
  var result: IOReturn
  init()
}

/*! @header IOKitLib
IOKitLib implements non-kernel task access to common IOKit object types - IORegistryEntry, IOService, IOIterator etc. These functions are generic - families may provide API that is more specific.<br>
IOKitLib represents IOKit objects outside the kernel with the types io_object_t, io_registry_entry_t, io_service_t, & io_connect_t. Function names usually begin with the type of object they are compatible with - eg. IOObjectRelease can be used with any io_object_t. Inside the kernel, the c++ class hierarchy allows the subclasses of each object type to receive the same requests from user level clients, for example in the kernel, IOService is a subclass of IORegistryEntry, which means any of the IORegistryEntryXXX functions in IOKitLib may be used with io_service_t's as well as io_registry_t's. There are functions available to introspect the class of the kernel object which any io_object_t et al. represents.
IOKit objects returned by all functions should be released with IOObjectRelease.
*/
typealias IONotificationPortRef = COpaquePointer

/*! @typedef IOServiceMatchingCallback
    @abstract Callback function to be notified of IOService publication.
    @param refcon The refcon passed when the notification was installed.
    @param iterator The notification iterator which now has new objects.
*/
typealias IOServiceMatchingCallback = @convention(c) (UnsafeMutablePointer<Void>, io_iterator_t) -> Void

/*! @typedef IOServiceInterestCallback
    @abstract Callback function to be notified of changes in state of an IOService.
    @param refcon The refcon passed when the notification was installed.
    @param service The IOService whose state has changed.
    @param messageType A messageType enum, defined by IOKit/IOMessage.h or by the IOService's family.
    @param messageArgument An argument for the message, dependent on the messageType.  If the message data is larger than sizeof(void*), then messageArgument contains a pointer to the message data; otherwise, messageArgument contains the message data.
*/
typealias IOServiceInterestCallback = @convention(c) (UnsafeMutablePointer<Void>, io_service_t, UInt32, UnsafeMutablePointer<Void>) -> Void

/*! @const kIOMasterPortDefault
    @abstract The default mach port used to initiate communication with IOKit.
    @discussion When specifying a master port to IOKit functions, the NULL argument indicates "use the default". This is a synonym for NULL, if you'd rather use a named constant.
*/
let kIOMasterPortDefault: mach_port_t

/*! @function IOMasterPort
    @abstract Returns the mach port used to initiate communication with IOKit.
    @discussion Functions that don't specify an existing object require the IOKit master port to be passed. This function obtains that port.
    @param bootstrapPort Pass MACH_PORT_NULL for the default.
    @param masterPort The master port is returned.
    @result A kern_return_t error code. */
func IOMasterPort(bootstrapPort: mach_port_t, _ masterPort: UnsafeMutablePointer<mach_port_t>) -> kern_return_t

/*! @function IONotificationPortCreate
    @abstract Creates and returns a notification object for receiving IOKit notifications of new devices or state changes.
    @discussion Creates the notification object to receive notifications from IOKit of new device arrivals or state changes. The notification object can be supply a CFRunLoopSource, or mach_port_t to be used to listen for events.
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @result A reference to the notification object. */
func IONotificationPortCreate(masterPort: mach_port_t) -> IONotificationPortRef

/*! @function IONotificationPortDestroy
    @abstract Destroys a notification object created with IONotificationPortCreate.
                Also destroys any mach_port's or CFRunLoopSources obatined from 
                <code>@link IONotificationPortGetRunLoopSource @/link</code>
                or <code>@link IONotificationPortGetMachPort @/link</code>
    @param notify A reference to the notification object. */
func IONotificationPortDestroy(notify: IONotificationPortRef)

/*! @function IONotificationPortGetRunLoopSource
    @abstract Returns a CFRunLoopSource to be used to listen for notifications.
    @discussion A notification object may deliver notifications to a CFRunLoop 
                by adding the run loop source returned by this function to the run loop.

                The caller should not release this CFRunLoopSource. Just call 
                <code>@link IONotificationPortDestroy @/link</code> to dispose of the
                IONotificationPortRef and the CFRunLoopSource when done.
    @param notify The notification object.
    @result A CFRunLoopSourceRef for the notification object. */
func IONotificationPortGetRunLoopSource(notify: IONotificationPortRef) -> Unmanaged<CFRunLoopSource>!

/*! @function IONotificationPortGetMachPort
    @abstract Returns a mach_port to be used to listen for notifications.
    @discussion A notification object may deliver notifications to a mach messaging client 
                if they listen for messages on the port obtained from this function. 
                Callbacks associated with the notifications may be delivered by calling 
                IODispatchCalloutFromMessage with messages received.
                
                The caller should not release this mach_port_t. Just call 
                <code>@link IONotificationPortDestroy @/link</code> to dispose of the
                mach_port_t and IONotificationPortRef when done.
    @param notify The notification object.
    @result A mach_port for the notification object. */
func IONotificationPortGetMachPort(notify: IONotificationPortRef) -> mach_port_t

/*! @function IONotificationPortSetDispatchQueue
    @abstract Sets a dispatch queue to be used to listen for notifications.
    @discussion A notification object may deliver notifications to a dispatch client.
    @param notify The notification object.
    @param queue A dispatch queue. */
@available(OSX 10.6, *)
func IONotificationPortSetDispatchQueue(notify: IONotificationPortRef, _ queue: dispatch_queue_t!)

/*! @function IODispatchCalloutFromMessage
    @abstract Dispatches callback notifications from a mach message.
    @discussion A notification object may deliver notifications to a mach messaging client, 
                which should call this function to generate the callbacks associated with the notifications arriving on the port.
    @param unused Not used, set to zero.
    @param msg A pointer to the message received.
    @param reference Pass the IONotificationPortRef for the object. */
func IODispatchCalloutFromMessage(unused: UnsafeMutablePointer<Void>, _ msg: UnsafeMutablePointer<mach_msg_header_t>, _ reference: UnsafeMutablePointer<Void>)

/*! @function IOCreateReceivePort
    @abstract Creates and returns a mach port suitable for receiving IOKit messages of the specified type.
    @discussion In the future IOKit may use specialized messages and ports
    instead of the standard ports created by mach_port_allocate(). Use this
    function instead of mach_port_allocate() to ensure compatibility with future
    revisions of IOKit.
    @param msgType Type of message to be sent to this port
    (kOSNotificationMessageID or kOSAsyncCompleteMessageID)
    @param recvPort The created port is returned.
    @result A kern_return_t error code. */
func IOCreateReceivePort(msgType: UInt32, _ recvPort: UnsafeMutablePointer<mach_port_t>) -> kern_return_t

/*! @function IOObjectRelease
    @abstract Releases an object handle previously returned by IOKitLib.
    @discussion All objects returned by IOKitLib should be released with this function when access to them is no longer needed. Using the object after it has been released may or may not return an error, depending on how many references the task has to the same object in the kernel.
    @param object The IOKit object to release.
    @result A kern_return_t error code. */
func IOObjectRelease(object: io_object_t) -> kern_return_t

/*! @function IOObjectRetain
    @abstract Retains an object handle previously returned by IOKitLib.
    @discussion Gives the caller an additional reference to an existing object handle previously returned by IOKitLib.
    @param object The IOKit object to retain.
    @result A kern_return_t error code. */
func IOObjectRetain(object: io_object_t) -> kern_return_t

/*! @function IOObjectGetClass
    @abstract Return the class name of an IOKit object.
    @discussion This function uses the OSMetaClass system in the kernel to derive the name of the class the object is an instance of.
    @param object The IOKit object.
    @param className Caller allocated buffer to receive the name string.
    @result A kern_return_t error code. */
func IOObjectGetClass(object: io_object_t, _ className: UnsafeMutablePointer<Int8>) -> kern_return_t

/*! @function IOObjectCopyClass
    @abstract Return the class name of an IOKit object.
	@discussion This function does the same thing as IOObjectGetClass, but returns the result as a CFStringRef.
	@param object The IOKit object.
	@result The resulting CFStringRef. This should be released by the caller. If a valid object is not passed in, then NULL is returned.*/
@available(OSX 10.4, *)
func IOObjectCopyClass(object: io_object_t) -> Unmanaged<CFString>!

/*! @function IOObjectCopySuperclassForClass
    @abstract Return the superclass name of the given class.
    @discussion This function uses the OSMetaClass system in the kernel to derive the name of the superclass of the class.
	@param classname The name of the class as a CFString.
	@result The resulting CFStringRef. This should be released by the caller. If there is no superclass, or a valid class name is not passed in, then NULL is returned.*/
@available(OSX 10.4, *)
func IOObjectCopySuperclassForClass(classname: CFString!) -> Unmanaged<CFString>!

/*! @function IOObjectCopyBundleIdentifierForClass
    @abstract Return the bundle identifier of the given class.
	@discussion This function uses the OSMetaClass system in the kernel to derive the name of the kmod, which is the same as the bundle identifier.
	@param classname The name of the class as a CFString.
	@result The resulting CFStringRef. This should be released by the caller. If a valid class name is not passed in, then NULL is returned.*/
@available(OSX 10.4, *)
func IOObjectCopyBundleIdentifierForClass(classname: CFString!) -> Unmanaged<CFString>!

/*! @function IOObjectConformsTo
    @abstract Performs an OSDynamicCast operation on an IOKit object.
    @discussion This function uses the OSMetaClass system in the kernel to determine if the object will dynamic cast to a class, specified as a C-string. In other words, if the object is of that class or a subclass.
    @param object An IOKit object.
    @param className The name of the class, as a C-string.
    @result If the object handle is valid, and represents an object in the kernel that dynamic casts to the class true is returned, otherwise false. */
func IOObjectConformsTo(object: io_object_t, _ className: UnsafePointer<Int8>) -> boolean_t

/*! @function IOObjectIsEqualTo
    @abstract Checks two object handles to see if they represent the same kernel object.
    @discussion If two object handles are returned by IOKitLib functions, this function will compare them to see if they represent the same kernel object.
    @param object An IOKit object.
    @param anObject Another IOKit object.
    @result If both object handles are valid, and represent the same object in the kernel true is returned, otherwise false. */
func IOObjectIsEqualTo(object: io_object_t, _ anObject: io_object_t) -> boolean_t

/*! @function IOObjectGetKernelRetainCount
    @abstract Returns kernel retain count of an IOKit object.
    @discussion This function may be used in diagnostics to determine the current retain count of the kernel object at the kernel level.
    @param object An IOKit object.
    @result If the object handle is valid, the kernel objects retain count is returned, otherwise zero is returned. */
@available(OSX 10.6, *)
func IOObjectGetKernelRetainCount(object: io_object_t) -> UInt32

/*! @function IOObjectGetUserRetainCount
    @abstract Returns the retain count for the current process of an IOKit object.
    @discussion This function may be used in diagnostics to determine the current retain count for the calling process of the kernel object.
    @param object An IOKit object.
    @result If the object handle is valid, the objects user retain count is returned, otherwise zero is returned. */
@available(OSX 10.6, *)
func IOObjectGetUserRetainCount(object: io_object_t) -> UInt32

/*! @function IOObjectGetRetainCount
    @abstract Returns kernel retain count of an IOKit object. Identical to IOObjectGetKernelRetainCount() but available prior to Mac OS 10.6.
    @discussion This function may be used in diagnostics to determine the current retain count of the kernel object at the kernel level.
    @param object An IOKit object.
    @result If the object handle is valid, the kernel objects retain count is returned, otherwise zero is returned. */
func IOObjectGetRetainCount(object: io_object_t) -> UInt32

/*! @function IOIteratorNext
    @abstract Returns the next object in an iteration.
    @discussion This function returns the next object in an iteration, or zero if no more remain or the iterator is invalid.
    @param iterator An IOKit iterator handle.
    @result If the iterator handle is valid, the next element in the iteration is returned, otherwise zero is returned. The element should be released by the caller when it is finished. */
func IOIteratorNext(iterator: io_iterator_t) -> io_object_t

/*! @function IOIteratorReset
    @abstract Resets an iteration back to the beginning.
    @discussion If an iterator is invalid, or if the caller wants to start over, IOIteratorReset will set the iteration back to the beginning.
    @param iterator An IOKit iterator handle. */
func IOIteratorReset(iterator: io_iterator_t)

/*! @function IOIteratorIsValid
    @abstract Checks an iterator is still valid.
    @discussion Some iterators will be made invalid if changes are made to the structure they are iterating over. This function checks the iterator is still valid and should be called when IOIteratorNext returns zero. An invalid iterator can be reset and the iteration restarted.
    @param iterator An IOKit iterator handle.
    @result True if the iterator handle is valid, otherwise false is returned. */
func IOIteratorIsValid(iterator: io_iterator_t) -> boolean_t

/*!
    @function IOServiceGetMatchingService
    @abstract Look up a registered IOService object that matches a matching dictionary.
    @discussion This is the preferred method of finding IOService objects currently registered by IOKit (that is, objects that have had their registerService() methods invoked). To find IOService objects that aren't yet registered, use an iterator as created by IORegistryEntryCreateIterator(). IOServiceAddMatchingNotification can also supply this information and install a notification of new IOServices. The matching information used in the matching dictionary may vary depending on the class of service being looked up.
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @param matching A CF dictionary containing matching information, of which one reference is always consumed by this function (Note prior to the Tiger release there was a small chance that the dictionary might not be released if there was an error attempting to serialize the dictionary). IOKitLib can construct matching dictionaries for common criteria with helper functions such as IOServiceMatching, IOServiceNameMatching, IOBSDNameMatching.
    @result The first service matched is returned on success. The service must be released by the caller.
  */
func IOServiceGetMatchingService(masterPort: mach_port_t, _ matching: CFDictionary!) -> io_service_t

/*! @function IOServiceGetMatchingServices
    @abstract Look up registered IOService objects that match a matching dictionary.
    @discussion This is the preferred method of finding IOService objects currently registered by IOKit (that is, objects that have had their registerService() methods invoked). To find IOService objects that aren't yet registered, use an iterator as created by IORegistryEntryCreateIterator(). IOServiceAddMatchingNotification can also supply this information and install a notification of new IOServices. The matching information used in the matching dictionary may vary depending on the class of service being looked up.
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @param matching A CF dictionary containing matching information, of which one reference is always consumed by this function (Note prior to the Tiger release there was a small chance that the dictionary might not be released if there was an error attempting to serialize the dictionary). IOKitLib can construct matching dictionaries for common criteria with helper functions such as IOServiceMatching, IOServiceNameMatching, IOBSDNameMatching.
    @param existing An iterator handle is returned on success, and should be released by the caller when the iteration is finished.
    @result A kern_return_t error code. */
func IOServiceGetMatchingServices(masterPort: mach_port_t, _ matching: CFDictionary!, _ existing: UnsafeMutablePointer<io_iterator_t>) -> kern_return_t
@available(*, deprecated)
func IOServiceAddNotification(masterPort: mach_port_t, _ notificationType: UnsafePointer<Int8>, _ matching: CFDictionary!, _ wakePort: mach_port_t, _ reference: UInt, _ notification: UnsafeMutablePointer<io_iterator_t>) -> kern_return_t

/*! @function IOServiceAddMatchingNotification
    @abstract Look up registered IOService objects that match a matching dictionary, and install a notification request of new IOServices that match.
    @discussion This is the preferred method of finding IOService objects that may arrive at any time. The type of notification specifies the state change the caller is interested in, on IOService's that match the match dictionary. Notification types are identified by name, and are defined in IOKitKeys.h. The matching information used in the matching dictionary may vary depending on the class of service being looked up.
    @param notifyPort A IONotificationPortRef object that controls how messages will be sent when the armed notification is fired. When the notification is delivered, the io_iterator_t representing the notification should be iterated through to pick up all outstanding objects. When the iteration is finished the notification is rearmed. See IONotificationPortCreate.
    @param notificationType A notification type from IOKitKeys.h
<br>	kIOPublishNotification Delivered when an IOService is registered.
<br>	kIOFirstPublishNotification Delivered when an IOService is registered, but only once per IOService instance. Some IOService's may be reregistered when their state is changed.
<br>	kIOMatchedNotification Delivered when an IOService has had all matching drivers in the kernel probed and started.
<br>	kIOFirstMatchNotification Delivered when an IOService has had all matching drivers in the kernel probed and started, but only once per IOService instance. Some IOService's may be reregistered when their state is changed.
<br>	kIOTerminatedNotification Delivered after an IOService has been terminated.
    @param matching A CF dictionary containing matching information, of which one reference is always consumed by this function (Note prior to the Tiger release there was a small chance that the dictionary might not be released if there was an error attempting to serialize the dictionary). IOKitLib can construct matching dictionaries for common criteria with helper functions such as IOServiceMatching, IOServiceNameMatching, IOBSDNameMatching.
    @param callback A callback function called when the notification fires.
    @param refCon A reference constant for the callbacks use.
    @param notification An iterator handle is returned on success, and should be released by the caller when the notification is to be destroyed. The notification is armed when the iterator is emptied by calls to IOIteratorNext - when no more objects are returned, the notification is armed. Note the notification is not armed when first created.
    @result A kern_return_t error code. */
func IOServiceAddMatchingNotification(notifyPort: IONotificationPortRef, _ notificationType: UnsafePointer<Int8>, _ matching: CFDictionary!, _ callback: IOServiceMatchingCallback!, _ refCon: UnsafeMutablePointer<Void>, _ notification: UnsafeMutablePointer<io_iterator_t>) -> kern_return_t

/*! @function IOServiceAddInterestNotification
    @abstract Register for notification of state changes in an IOService.
    @discussion IOService objects deliver notifications of their state changes to their clients via the IOService::messageClients API, and to other interested parties including callers of this function. Message types are defined IOKit/IOMessage.h.
    @param notifyPort A IONotificationPortRef object that controls how messages will be sent when the notification is fired. See IONotificationPortCreate.
    @param interestType A notification type from IOKitKeys.h
<br>	kIOGeneralInterest General state changes delivered via the IOService::messageClients API.
<br>	kIOBusyInterest Delivered when the IOService changes its busy state to or from zero. The message argument contains the new busy state causing the notification.
    @param callback A callback function called when the notification fires, with messageType and messageArgument for the state change.
    @param refCon A reference constant for the callbacks use.
    @param notification An object handle is returned on success, and should be released by the caller when the notification is to be destroyed.
    @result A kern_return_t error code. */
func IOServiceAddInterestNotification(notifyPort: IONotificationPortRef, _ service: io_service_t, _ interestType: UnsafePointer<Int8>, _ callback: IOServiceInterestCallback!, _ refCon: UnsafeMutablePointer<Void>, _ notification: UnsafeMutablePointer<io_object_t>) -> kern_return_t

/*! @function IOServiceMatchPropertyTable
    @abstract Match an IOService objects with matching dictionary.
    @discussion This function calls the matching method of an IOService object and returns the boolean result.
    @param service The IOService object to match.
    @param matching A CF dictionary containing matching information. IOKitLib can construct matching dictionaries for common criteria with helper functions such as IOServiceMatching, IOServiceNameMatching, IOBSDNameMatching.
    @param matches The boolean result is returned.
    @result A kern_return_t error code. */
func IOServiceMatchPropertyTable(service: io_service_t, _ matching: CFDictionary!, _ matches: UnsafeMutablePointer<boolean_t>) -> kern_return_t

/*! @function IOServiceGetBusyState
    @abstract Returns the busyState of an IOService.
    @discussion Many activities in IOService are asynchronous. When registration, matching, or termination is in progress on an IOService, its busyState is increased by one. Change in busyState to or from zero also changes the IOService's provider's busyState by one, which means that an IOService is marked busy when any of the above activities is ocurring on it or any of its clients.
    @param service The IOService whose busyState to return.
    @param busyState The busyState count is returned.
    @result A kern_return_t error code. */
func IOServiceGetBusyState(service: io_service_t, _ busyState: UnsafeMutablePointer<UInt32>) -> kern_return_t

/*! @function IOServiceWaitQuiet
    @abstract Wait for an IOService's busyState to be zero.
    @discussion Blocks the caller until an IOService is non busy, see IOServiceGetBusyState.
    @param service The IOService wait on.
    @param waitTime Specifies a maximum time to wait.
    @result Returns an error code if mach synchronization primitives fail, kIOReturnTimeout, or kIOReturnSuccess. */
func IOServiceWaitQuiet(service: io_service_t, _ waitTime: UnsafeMutablePointer<mach_timespec_t>) -> kern_return_t

/*! @function IOKitGetBusyState
    @abstract Returns the busyState of all IOServices.
    @discussion Many activities in IOService are asynchronous. When registration, matching, or termination is in progress on an IOService, its busyState is increased by one. Change in busyState to or from zero also changes the IOService's provider's busyState by one, which means that an IOService is marked busy when any of the above activities is ocurring on it or any of its clients. IOKitGetBusyState returns the busy state of the root of the service plane which reflects the busy state of all IOServices.
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @param busyState The busyState count is returned.
    @result A kern_return_t error code. */
func IOKitGetBusyState(masterPort: mach_port_t, _ busyState: UnsafeMutablePointer<UInt32>) -> kern_return_t

/*! @function IOKitWaitQuiet
    @abstract Wait for a all IOServices' busyState to be zero.
    @discussion Blocks the caller until all IOServices are non busy, see IOKitGetBusyState.
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @param waitTime Specifies a maximum time to wait.
    @result Returns an error code if mach synchronization primitives fail, kIOReturnTimeout, or kIOReturnSuccess. */
func IOKitWaitQuiet(masterPort: mach_port_t, _ waitTime: UnsafeMutablePointer<mach_timespec_t>) -> kern_return_t

/*! @function IOServiceOpen
    @abstract A request to create a connection to an IOService.
    @discussion A non kernel client may request a connection be opened via the IOServiceOpen() library function, which will call IOService::newUserClient in the kernel. The rules & capabilities of user level clients are family dependent, the default IOService implementation returns kIOReturnUnsupported.
    @param service The IOService object to open a connection to, usually obtained via the IOServiceGetMatchingServices or IOServiceAddNotification APIs.
    @param owningTask The mach task requesting the connection.
    @param type A constant specifying the type of connection to be created,  interpreted only by the IOService's family.
    @param connect An io_connect_t handle is returned on success, to be used with the IOConnectXXX APIs. It should be destroyed with IOServiceClose().
    @result A return code generated by IOService::newUserClient. */
func IOServiceOpen(service: io_service_t, _ owningTask: task_port_t, _ type: UInt32, _ connect: UnsafeMutablePointer<io_connect_t>) -> kern_return_t

/*! @function IOServiceRequestProbe
    @abstract A request to rescan a bus for device changes.
    @discussion A non kernel client may request a bus or controller rescan for added or removed devices, if the bus family does automatically notice such changes. For example, SCSI bus controllers do not notice device changes. The implementation of this routine is family dependent, and the default IOService implementation returns kIOReturnUnsupported.
    @param service The IOService object to request a rescan, usually obtained via the IOServiceGetMatchingServices or IOServiceAddNotification APIs.
    @param options An options mask, interpreted only by the IOService's family.
    @result A return code generated by IOService::requestProbe. */
func IOServiceRequestProbe(service: io_service_t, _ options: UInt32) -> kern_return_t
var kIOServiceInteractionAllowed: Int { get }

/*! @function IOServiceAuthorize
    @abstract Authorize access to an IOService.
    @discussion Determine whether this application is authorized to invoke IOServiceOpen() for a given IOService, either by confirming that it has been previously authorized by the user, or by soliciting the console user.
    @param service The IOService object to be authorized, usually obtained via the IOServiceGetMatchingServices or IOServiceAddNotification APIs.
    @param options kIOServiceInteractionAllowed may be set to permit user interaction, if required.
    @result kIOReturnSuccess if the IOService is authorized, kIOReturnNotPermitted if the IOService is not authorized. */
func IOServiceAuthorize(service: io_service_t, _ options: UInt32) -> kern_return_t
func IOServiceOpenAsFileDescriptor(service: io_service_t, _ oflag: Int32) -> Int32

/*! @function IOServiceClose
    @abstract Close a connection to an IOService and destroy the connect handle.
    @discussion A connection created with the IOServiceOpen should be closed when the connection is no longer to be used with IOServiceClose.
    @param connect The connect handle created by IOServiceOpen. It will be destroyed by this function, and should not be released with IOObjectRelease.
    @result A kern_return_t error code. */
func IOServiceClose(connect: io_connect_t) -> kern_return_t

/*! @function IOConnectAddRef
    @abstract Adds a reference to the connect handle.
    @discussion Adds a reference to the connect handle.
    @param connect The connect handle created by IOServiceOpen.
    @result A kern_return_t error code. */
func IOConnectAddRef(connect: io_connect_t) -> kern_return_t

/*! @function IOConnectRelease
    @abstract Remove a reference to the connect handle.
    @discussion Removes a reference to the connect handle.  If the last reference is removed an implicit IOServiceClose is performed.
    @param connect The connect handle created by IOServiceOpen.
    @result A kern_return_t error code. */
func IOConnectRelease(connect: io_connect_t) -> kern_return_t

/*! @function IOConnectGetService
    @abstract Returns the IOService a connect handle was opened on.
    @discussion Finds the service object a connection was opened on.
    @param connect The connect handle created by IOServiceOpen.
    @param service On succes, the service handle the connection was opened on, which should be released with IOObjectRelease.
    @result A kern_return_t error code. */
func IOConnectGetService(connect: io_connect_t, _ service: UnsafeMutablePointer<io_service_t>) -> kern_return_t

/*! @function IOConnectSetNotificationPort
    @abstract Set a port to receive family specific notifications.
    @discussion This is a generic method to pass a mach port send right to be be used by family specific notifications. 
    @param connect The connect handle created by IOServiceOpen.
    @param type The type of notification requested, not interpreted by IOKit and family defined.
    @param port The port to which to send notifications.
    @param reference Some families may support passing a reference parameter for the callers use with the notification.
    @result A kern_return_t error code. */
func IOConnectSetNotificationPort(connect: io_connect_t, _ type: UInt32, _ port: mach_port_t, _ reference: UInt) -> kern_return_t
func IOConnectMapMemory(connect: io_connect_t, _ memoryType: UInt32, _ intoTask: task_port_t, _ atAddress: UnsafeMutablePointer<mach_vm_address_t>, _ ofSize: UnsafeMutablePointer<mach_vm_size_t>, _ options: IOOptionBits) -> kern_return_t

/*! @function IOConnectMapMemory64
    @abstract Map hardware or shared memory into the caller's task.
    @discussion This is a generic method to create a mapping in the callers task. The family will interpret the type parameter to determine what sort of mapping is being requested. Cache modes and placed mappings may be requested by the caller.
    @param connect The connect handle created by IOServiceOpen.
    @param memoryType What is being requested to be mapped, not interpreted by IOKit and family defined. The family may support physical hardware or shared memory mappings.
    @param intoTask The task port for the task in which to create the mapping. This may be different to the task which the opened the connection.
    @param atAddress An in/out parameter - if the kIOMapAnywhere option is not set, the caller should pass the address where it requests the mapping be created, otherwise nothing need to set on input. The address of the mapping created is passed back on sucess.
    @param ofSize The size of the mapping created is passed back on success.
    @result A kern_return_t error code. */
func IOConnectMapMemory64(connect: io_connect_t, _ memoryType: UInt32, _ intoTask: task_port_t, _ atAddress: UnsafeMutablePointer<mach_vm_address_t>, _ ofSize: UnsafeMutablePointer<mach_vm_size_t>, _ options: IOOptionBits) -> kern_return_t
func IOConnectUnmapMemory(connect: io_connect_t, _ memoryType: UInt32, _ fromTask: task_port_t, _ atAddress: mach_vm_address_t) -> kern_return_t

/*! @function IOConnectUnmapMemory64
    @abstract Remove a mapping made with IOConnectMapMemory64.
    @discussion This is a generic method to remove a mapping in the callers task.
    @param connect The connect handle created by IOServiceOpen.
    @param memoryType The memory type originally requested in IOConnectMapMemory.
    @param fromTask The task port for the task in which to remove the mapping. This may be different to the task which the opened the connection.
    @param atAddress The address of the mapping to be removed.
    @result A kern_return_t error code. */
func IOConnectUnmapMemory64(connect: io_connect_t, _ memoryType: UInt32, _ fromTask: task_port_t, _ atAddress: mach_vm_address_t) -> kern_return_t

/*! @function IOConnectSetCFProperties
    @abstract Set CF container based properties on a connection.
    @discussion This is a generic method to pass a CF container of properties to the connection. The properties are interpreted by the family and commonly represent configuration settings, but may be interpreted as anything.
    @param connect The connect handle created by IOServiceOpen.
    @param properties A CF container - commonly a CFDictionary but this is not enforced. The container should consist of objects which are understood by IOKit - these are currently : CFDictionary, CFArray, CFSet, CFString, CFData, CFNumber, CFBoolean, and are passed in the kernel as the corresponding OSDictionary etc. objects.
    @result A kern_return_t error code returned by the family. */
func IOConnectSetCFProperties(connect: io_connect_t, _ properties: AnyObject!) -> kern_return_t

/*! @function IOConnectSetCFProperty
    @abstract Set a CF container based property on a connection.
    @discussion This is a generic method to pass a CF property to the connection. The property is interpreted by the family and commonly represent configuration settings, but may be interpreted as anything.
    @param connect The connect handle created by IOServiceOpen.
    @param propertyName The name of the property as a CFString.
    @param property A CF container - should consist of objects which are understood by IOKit - these are currently : CFDictionary, CFArray, CFSet, CFString, CFData, CFNumber, CFBoolean, and are passed in the kernel as the corresponding OSDictionary etc. objects.
    @result A kern_return_t error code returned by the object. */
func IOConnectSetCFProperty(connect: io_connect_t, _ propertyName: CFString!, _ property: AnyObject!) -> kern_return_t
@available(OSX 10.5, *)
func IOConnectCallMethod(connection: mach_port_t, _ selector: UInt32, _ input: UnsafePointer<UInt64>, _ inputCnt: UInt32, _ inputStruct: UnsafePointer<Void>, _ inputStructCnt: Int, _ output: UnsafeMutablePointer<UInt64>, _ outputCnt: UnsafeMutablePointer<UInt32>, _ outputStruct: UnsafeMutablePointer<Void>, _ outputStructCnt: UnsafeMutablePointer<Int>) -> kern_return_t
@available(OSX 10.5, *)
func IOConnectCallAsyncMethod(connection: mach_port_t, _ selector: UInt32, _ wake_port: mach_port_t, _ reference: UnsafeMutablePointer<UInt64>, _ referenceCnt: UInt32, _ input: UnsafePointer<UInt64>, _ inputCnt: UInt32, _ inputStruct: UnsafePointer<Void>, _ inputStructCnt: Int, _ output: UnsafeMutablePointer<UInt64>, _ outputCnt: UnsafeMutablePointer<UInt32>, _ outputStruct: UnsafeMutablePointer<Void>, _ outputStructCnt: UnsafeMutablePointer<Int>) -> kern_return_t
@available(OSX 10.5, *)
func IOConnectCallStructMethod(connection: mach_port_t, _ selector: UInt32, _ inputStruct: UnsafePointer<Void>, _ inputStructCnt: Int, _ outputStruct: UnsafeMutablePointer<Void>, _ outputStructCnt: UnsafeMutablePointer<Int>) -> kern_return_t
@available(OSX 10.5, *)
func IOConnectCallAsyncStructMethod(connection: mach_port_t, _ selector: UInt32, _ wake_port: mach_port_t, _ reference: UnsafeMutablePointer<UInt64>, _ referenceCnt: UInt32, _ inputStruct: UnsafePointer<Void>, _ inputStructCnt: Int, _ outputStruct: UnsafeMutablePointer<Void>, _ outputStructCnt: UnsafeMutablePointer<Int>) -> kern_return_t
@available(OSX 10.5, *)
func IOConnectCallScalarMethod(connection: mach_port_t, _ selector: UInt32, _ input: UnsafePointer<UInt64>, _ inputCnt: UInt32, _ output: UnsafeMutablePointer<UInt64>, _ outputCnt: UnsafeMutablePointer<UInt32>) -> kern_return_t
@available(OSX 10.5, *)
func IOConnectCallAsyncScalarMethod(connection: mach_port_t, _ selector: UInt32, _ wake_port: mach_port_t, _ reference: UnsafeMutablePointer<UInt64>, _ referenceCnt: UInt32, _ input: UnsafePointer<UInt64>, _ inputCnt: UInt32, _ output: UnsafeMutablePointer<UInt64>, _ outputCnt: UnsafeMutablePointer<UInt32>) -> kern_return_t
func IOConnectTrap0(connect: io_connect_t, _ index: UInt32) -> kern_return_t
func IOConnectTrap1(connect: io_connect_t, _ index: UInt32, _ p1: UInt) -> kern_return_t
func IOConnectTrap2(connect: io_connect_t, _ index: UInt32, _ p1: UInt, _ p2: UInt) -> kern_return_t
func IOConnectTrap3(connect: io_connect_t, _ index: UInt32, _ p1: UInt, _ p2: UInt, _ p3: UInt) -> kern_return_t
func IOConnectTrap4(connect: io_connect_t, _ index: UInt32, _ p1: UInt, _ p2: UInt, _ p3: UInt, _ p4: UInt) -> kern_return_t
func IOConnectTrap5(connect: io_connect_t, _ index: UInt32, _ p1: UInt, _ p2: UInt, _ p3: UInt, _ p4: UInt, _ p5: UInt) -> kern_return_t
func IOConnectTrap6(connect: io_connect_t, _ index: UInt32, _ p1: UInt, _ p2: UInt, _ p3: UInt, _ p4: UInt, _ p5: UInt, _ p6: UInt) -> kern_return_t

/*! @function IOConnectAddClient
    @abstract Inform a connection of a second connection.
    @discussion This is a generic method to inform a family connection of a second connection, and is rarely used.
    @param connect The connect handle created by IOServiceOpen.
    @param client Another connect handle created by IOServiceOpen.
    @result A kern_return_t error code returned by the family. */
func IOConnectAddClient(connect: io_connect_t, _ client: io_connect_t) -> kern_return_t

/*! @function IORegistryGetRootEntry
    @abstract Return a handle to the registry root.
    @discussion This method provides an accessor to the root of the registry for the machine. The root may be passed to a registry iterator when iterating a plane, and contains properties that describe the available planes, and diagnostic information for IOKit.
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @result A handle to the IORegistryEntry root instance, to be released with IOObjectRelease by the caller, or MACH_PORT_NULL on failure. */
func IORegistryGetRootEntry(masterPort: mach_port_t) -> io_registry_entry_t

/*! @function IORegistryEntryFromPath
    @abstract Looks up a registry entry by path.
    @discussion This function parses paths to lookup registry entries. The path should begin with '<plane name>:' If there are characters remaining unparsed after an entry has been looked up, this is considered an invalid lookup. Paths are further documented in IORegistryEntry.h
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @param path A C-string path.
    @result A handle to the IORegistryEntry witch was found with the path, to be released with IOObjectRelease by the caller, or MACH_PORT_NULL on failure. */
func IORegistryEntryFromPath(masterPort: mach_port_t, _ path: UnsafePointer<Int8>) -> io_registry_entry_t

/*! @function IORegistryEntryFromPathCFString
    @abstract Looks up a registry entry by path.
    @discussion This function parses paths to lookup registry entries. The path should begin with '<plane name>:' If there are characters remaining unparsed after an entry has been looked up, this is considered an invalid lookup. Paths are further documented in IORegistryEntry.h
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @param path A CFString path.
    @result A handle to the IORegistryEntry witch was found with the path, to be released with IOObjectRelease by the caller, or MACH_PORT_NULL on failure. */
@available(OSX 10.11, *)
func IORegistryEntryCopyFromPath(masterPort: mach_port_t, _ path: CFString!) -> io_registry_entry_t
var kIORegistryIterateRecursively: Int { get }
var kIORegistryIterateParents: Int { get }

/*! @function IORegistryCreateIterator
    @abstract Create an iterator rooted at the registry root.
    @discussion This method creates an IORegistryIterator in the kernel that is set up with options to iterate children of the registry root entry, and to recurse automatically into entries as they are returned, or only when instructed with calls to IORegistryIteratorEnterEntry. The iterator object keeps track of entries that have been recursed into previously to avoid loops.
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param options kIORegistryIterateRecursively may be set to recurse automatically into each entry as it is returned from IOIteratorNext calls on the registry iterator. 
    @param iterator A created iterator handle, to be released by the caller when it has finished with it.
    @result A kern_return_t error code. */
func IORegistryCreateIterator(masterPort: mach_port_t, _ plane: UnsafePointer<Int8>, _ options: IOOptionBits, _ iterator: UnsafeMutablePointer<io_iterator_t>) -> kern_return_t

/*! @function IORegistryEntryCreateIterator
    @abstract Create an iterator rooted at a given registry entry.
    @discussion This method creates an IORegistryIterator in the kernel that is set up with options to iterate children or parents of a root entry, and to recurse automatically into entries as they are returned, or only when instructed with calls to IORegistryIteratorEnterEntry. The iterator object keeps track of entries that have been recursed into previously to avoid loops.
    @param entry The root entry to begin the iteration at.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param options kIORegistryIterateRecursively may be set to recurse automatically into each entry as it is returned from IOIteratorNext calls on the registry iterator. kIORegistryIterateParents may be set to iterate the parents of each entry, by default the children are iterated.
    @param iterator A created iterator handle, to be released by the caller when it has finished with it.
    @result A kern_return_t error code. */
func IORegistryEntryCreateIterator(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ options: IOOptionBits, _ iterator: UnsafeMutablePointer<io_iterator_t>) -> kern_return_t

/*! @function IORegistryIteratorEnterEntry
    @abstract Recurse into the current entry in the registry iteration.
    @discussion This method makes the current entry, ie. the last entry returned by IOIteratorNext, the root in a new level of recursion.
    @result A kern_return_t error code. */
func IORegistryIteratorEnterEntry(iterator: io_iterator_t) -> kern_return_t

/*! @function IORegistryIteratorExitEntry
    @abstract Exits a level of recursion, restoring the current entry.
    @discussion This method undoes an IORegistryIteratorEnterEntry, restoring the current entry. If there are no more levels of recursion to exit false is returned, otherwise true is returned.
    @result kIOReturnSuccess if a level of recursion was undone, kIOReturnNoDevice if no recursive levels are left in the iteration. */
func IORegistryIteratorExitEntry(iterator: io_iterator_t) -> kern_return_t

/*! @function IORegistryEntryGetName
    @abstract Returns a C-string name assigned to a registry entry.
    @discussion Registry entries can be named in a particular plane, or globally. This function returns the entry's global name. The global name defaults to the entry's meta class name if it has not been named.
    @param entry The registry entry handle whose name to look up.
    @param name The caller's buffer to receive the name.
    @result A kern_return_t error code. */
func IORegistryEntryGetName(entry: io_registry_entry_t, _ name: UnsafeMutablePointer<Int8>) -> kern_return_t

/*! @function IORegistryEntryGetNameInPlane
    @abstract Returns a C-string name assigned to a registry entry, in a specified plane.
    @discussion Registry entries can be named in a particular plane, or globally. This function returns the entry's name in the specified plane or global name if it has not been named in that plane. The global name defaults to the entry's meta class name if it has not been named.
    @param entry The registry entry handle whose name to look up.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param name The caller's buffer to receive the name.
    @result A kern_return_t error code. */
func IORegistryEntryGetNameInPlane(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ name: UnsafeMutablePointer<Int8>) -> kern_return_t

/*! @function IORegistryEntryGetLocationInPlane
    @abstract Returns a C-string location assigned to a registry entry, in a specified plane.
    @discussion Registry entries can given a location string in a particular plane, or globally. If the entry has had a location set in the specified plane that location string will be returned, otherwise the global location string is returned. If no global location string has been set, an error is returned.
    @param entry The registry entry handle whose name to look up.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param location The caller's buffer to receive the location string.
    @result A kern_return_t error code. */
func IORegistryEntryGetLocationInPlane(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ location: UnsafeMutablePointer<Int8>) -> kern_return_t

/*! @function IORegistryEntryGetPath
    @abstract Create a path for a registry entry.
    @discussion The path for a registry entry is copied to the caller's buffer. The path describes the entry's attachment in a particular plane, which must be specified. The path begins with the plane name followed by a colon, and then followed by '/' separated path components for each of the entries between the root and the registry entry. An alias may also exist for the entry, and will be returned if available.
    @param entry The registry entry handle whose path to look up.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param path A char buffer allocated by the caller.
    @result IORegistryEntryGetPath will fail if the entry is not attached in the plane, or if the buffer is not large enough to contain the path. */
func IORegistryEntryGetPath(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ path: UnsafeMutablePointer<Int8>) -> kern_return_t

/*! @function IORegistryEntryCopyPath
    @abstract Create a path for a registry entry.
    @discussion The path for a registry entry is returned as a CFString The path describes the entry's attachment in a particular plane, which must be specified. The path begins with the plane name followed by a colon, and then followed by '/' separated path components for each of the entries between the root and the registry entry. An alias may also exist for the entry, and will be returned if available.
    @param entry The registry entry handle whose path to look up.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @result An instance of CFString on success, to be released by the caller. IORegistryEntryCopyPath will fail if the entry is not attached in the plane. */
@available(OSX 10.11, *)
func IORegistryEntryCopyPath(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>) -> Unmanaged<CFString>!

/*! @function IORegistryEntryGetRegistryEntryID
    @abstract Returns an ID for the registry entry that is global to all tasks.
    @discussion The entry ID returned by IORegistryEntryGetRegistryEntryID can be used to identify a registry entry across all tasks. A registry entry may be looked up by its entryID by creating a matching dictionary with IORegistryEntryIDMatching() to be used with the IOKit matching functions. The ID is valid only until the machine reboots.
    @param entry The registry entry handle whose ID to look up.
    @param entryID The resulting ID.
    @result A kern_return_t error code. */
func IORegistryEntryGetRegistryEntryID(entry: io_registry_entry_t, _ entryID: UnsafeMutablePointer<UInt64>) -> kern_return_t

/*! @function IORegistryEntryCreateCFProperties
    @abstract Create a CF dictionary representation of a registry entry's property table.
    @discussion This function creates an instantaneous snapshot of a registry entry's property table, creating a CFDictionary analogue in the caller's task. Not every object available in the kernel is represented as a CF container; currently OSDictionary, OSArray, OSSet, OSSymbol, OSString, OSData, OSNumber, OSBoolean are created as their CF counterparts. 
    @param entry The registry entry handle whose property table to copy.
    @param properties A CFDictionary is created and returned the caller on success. The caller should release with CFRelease.
    @param allocator The CF allocator to use when creating the CF containers.
    @param options No options are currently defined.
    @result A kern_return_t error code. */
func IORegistryEntryCreateCFProperties(entry: io_registry_entry_t, _ properties: UnsafeMutablePointer<Unmanaged<CFMutableDictionary>?>, _ allocator: CFAllocator!, _ options: IOOptionBits) -> kern_return_t

/*! @function IORegistryEntryCreateCFProperty
    @abstract Create a CF representation of a registry entry's property.
    @discussion This function creates an instantaneous snapshot of a registry entry property, creating a CF container analogue in the caller's task. Not every object available in the kernel is represented as a CF container; currently OSDictionary, OSArray, OSSet, OSSymbol, OSString, OSData, OSNumber, OSBoolean are created as their CF counterparts. 
    @param entry The registry entry handle whose property to copy.
    @param key A CFString specifying the property name.
    @param allocator The CF allocator to use when creating the CF container.
    @param options No options are currently defined.
    @result A CF container is created and returned the caller on success. The caller should release with CFRelease. */
func IORegistryEntryCreateCFProperty(entry: io_registry_entry_t, _ key: CFString!, _ allocator: CFAllocator!, _ options: IOOptionBits) -> Unmanaged<AnyObject>!

/*! @function IORegistryEntrySearchCFProperty
    @abstract Create a CF representation of a registry entry's property.
    @discussion This function creates an instantaneous snapshot of a registry entry property, creating a CF container analogue in the caller's task. Not every object available in the kernel is represented as a CF container; currently OSDictionary, OSArray, OSSet, OSSymbol, OSString, OSData, OSNumber, OSBoolean are created as their CF counterparts. 
This function will search for a property, starting first with specified registry entry's property table, then iterating recusively through either the parent registry entries or the child registry entries of this entry. Once the first occurrence is found, it will lookup and return the value of the property, using the same semantics as IORegistryEntryCreateCFProperty. The iteration keeps track of entries that have been recursed into previously to avoid loops.
    @param entry The registry entry at which to start the search.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param key A CFString specifying the property name.
    @param allocator The CF allocator to use when creating the CF container.
    @param options kIORegistryIterateRecursively may be set to recurse automatically into the registry hierarchy. Without this option, this method degenerates into the standard IORegistryEntryCreateCFProperty() call. kIORegistryIterateParents may be set to iterate the parents of the entry, in place of the children.
    @result A CF container is created and returned the caller on success. The caller should release with CFRelease. */
func IORegistryEntrySearchCFProperty(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ key: CFString!, _ allocator: CFAllocator!, _ options: IOOptionBits) -> AnyObject!
func IORegistryEntryGetProperty(entry: io_registry_entry_t, _ propertyName: UnsafePointer<Int8>, _ buffer: UnsafeMutablePointer<Int8>, _ size: UnsafeMutablePointer<UInt32>) -> kern_return_t

/*! @function IORegistryEntrySetCFProperties
    @abstract Set CF container based properties in a registry entry.
    @discussion This is a generic method to pass a CF container of properties to an object in the registry. Setting properties in a registry entry is not generally supported, it is more common to support IOConnectSetCFProperties for connection based property setting. The properties are interpreted by the object.
    @param entry The registry entry whose properties to set.
    @param properties A CF container - commonly a CFDictionary but this is not enforced. The container should consist of objects which are understood by IOKit - these are currently : CFDictionary, CFArray, CFSet, CFString, CFData, CFNumber, CFBoolean, and are passed in the kernel as the corresponding OSDictionary etc. objects.
    @result A kern_return_t error code returned by the object. */
func IORegistryEntrySetCFProperties(entry: io_registry_entry_t, _ properties: AnyObject!) -> kern_return_t

/*! @function IORegistryEntrySetCFProperty
    @abstract Set a CF container based property in a registry entry.
    @discussion This is a generic method to pass a CF container as a property to an object in the registry. Setting properties in a registry entry is not generally supported, it is more common to support IOConnectSetCFProperty for connection based property setting. The property is interpreted by the object.
    @param entry The registry entry whose property to set.
    @param propertyName The name of the property as a CFString.
    @param property A CF container - should consist of objects which are understood by IOKit - these are currently : CFDictionary, CFArray, CFSet, CFString, CFData, CFNumber, CFBoolean, and are passed in the kernel as the corresponding OSDictionary etc. objects.
    @result A kern_return_t error code returned by the object. */
func IORegistryEntrySetCFProperty(entry: io_registry_entry_t, _ propertyName: CFString!, _ property: AnyObject!) -> kern_return_t

/*! @function IORegistryEntryGetChildIterator
    @abstract Returns an iterator over an registry entry's child entries in a plane.
    @discussion This method creates an iterator which will return each of a registry entry's child entries in a specified plane.
    @param entry The registry entry whose children to iterate over.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param iterator The created iterator over the children of the entry, on success. The iterator must be released when the iteration is finished.
    @result A kern_return_t error code. */
func IORegistryEntryGetChildIterator(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ iterator: UnsafeMutablePointer<io_iterator_t>) -> kern_return_t

/*! @function IORegistryEntryGetChildEntry
    @abstract Returns the first child of a registry entry in a plane.
    @discussion This function will return the child which first attached to a registry entry in a plane.
    @param entry The registry entry whose child to look up.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param child The first child of the registry entry, on success. The child must be released by the caller.
    @result A kern_return_t error code. */
func IORegistryEntryGetChildEntry(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ child: UnsafeMutablePointer<io_registry_entry_t>) -> kern_return_t

/*! @function IORegistryEntryGetParentIterator
    @abstract Returns an iterator over an registry entry's parent entries in a plane.
    @discussion This method creates an iterator which will return each of a registry entry's parent entries in a specified plane.
    @param entry The registry entry whose parents to iterate over.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param iterator The created iterator over the parents of the entry, on success. The iterator must be released when the iteration is finished.
    @result A kern_return_t error. */
func IORegistryEntryGetParentIterator(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ iterator: UnsafeMutablePointer<io_iterator_t>) -> kern_return_t

/*! @function IORegistryEntryGetParentEntry
    @abstract Returns the first parent of a registry entry in a plane.
    @discussion This function will return the parent to which the registry entry was first attached in a plane.
    @param entry The registry entry whose parent to look up.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @param parent The first parent of the registry entry, on success. The parent must be released by the caller.
    @result A kern_return_t error code. */
func IORegistryEntryGetParentEntry(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>, _ parent: UnsafeMutablePointer<io_registry_entry_t>) -> kern_return_t

/*! @function IORegistryEntryInPlane
    @abstract Determines if the registry entry is attached in a plane.
    @discussion This method determines if the entry is attached in a plane to any other entry.
    @param entry The registry entry.
    @param plane The name of an existing registry plane. Plane names are defined in IOKitKeys.h, eg. kIOServicePlane.
    @result If the entry has a parent in the plane, true is returned, otherwise false is returned. */
func IORegistryEntryInPlane(entry: io_registry_entry_t, _ plane: UnsafePointer<Int8>) -> boolean_t

/*! @function IOServiceMatching
    @abstract Create a matching dictionary that specifies an IOService class match.
    @discussion A very common matching criteria for IOService is based on its class. IOServiceMatching will create a matching dictionary that specifies any IOService of a class, or its subclasses. The class is specified by C-string name.
    @param name The class name, as a const C-string. Class matching is successful on IOService's of this class or any subclass.
    @result The matching dictionary created, is returned on success, or zero on failure. The dictionary is commonly passed to IOServiceGetMatchingServices or IOServiceAddNotification which will consume a reference, otherwise it should be released with CFRelease by the caller. */
func IOServiceMatching(name: UnsafePointer<Int8>) -> CFMutableDictionary!

/*! @function IOServiceNameMatching
    @abstract Create a matching dictionary that specifies an IOService name match.
    @discussion A common matching criteria for IOService is based on its name. IOServiceNameMatching will create a matching dictionary that specifies an IOService with a given name. Some IOServices created from the device tree will perform name matching on the standard compatible, name, model properties.
    @param name The IOService name, as a const C-string.
    @result The matching dictionary created, is returned on success, or zero on failure. The dictionary is commonly passed to IOServiceGetMatchingServices or IOServiceAddNotification which will consume a reference, otherwise it should be released with CFRelease by the caller. */
func IOServiceNameMatching(name: UnsafePointer<Int8>) -> CFMutableDictionary!

/*! @function IOBSDNameMatching
    @abstract Create a matching dictionary that specifies an IOService match based on BSD device name.
    @discussion IOServices that represent BSD devices have an associated BSD name. This function creates a matching dictionary that will match IOService's with a given BSD name.
    @param masterPort The master port obtained from IOMasterPort(). Pass kIOMasterPortDefault to look up the default master port.
    @param options No options are currently defined.
    @param bsdName The BSD name, as a const char *.
    @result The matching dictionary created, is returned on success, or zero on failure. The dictionary is commonly passed to IOServiceGetMatchingServices or IOServiceAddNotification which will consume a reference, otherwise it should be released with CFRelease by the caller. */
func IOBSDNameMatching(masterPort: mach_port_t, _ options: UInt32, _ bsdName: UnsafePointer<Int8>) -> CFMutableDictionary!
@available(*, deprecated)
func IOOpenFirmwarePathMatching(masterPort: mach_port_t, _ options: UInt32, _ path: UnsafePointer<Int8>) -> Unmanaged<CFMutableDictionary>!

/*! @function IORegistryEntryIDMatching
    @abstract Create a matching dictionary that specifies an IOService match based on a registry entry ID.
    @discussion This function creates a matching dictionary that will match a registered, active IOService found with the given registry entry ID. The entry ID for a registry entry is returned by IORegistryEntryGetRegistryEntryID().
    @param entryID The registry entry ID to be found. 
    @result The matching dictionary created, is returned on success, or zero on failure. The dictionary is commonly passed to IOServiceGetMatchingServices or IOServiceAddNotification which will consume a reference, otherwise it should be released with CFRelease by the caller. */
func IORegistryEntryIDMatching(entryID: UInt64) -> CFMutableDictionary!
@available(*, deprecated)
func IOServiceOFPathToBSDName(masterPort: mach_port_t, _ openFirmwarePath: UnsafePointer<Int8>, _ bsdName: UnsafeMutablePointer<Int8>) -> kern_return_t

/*! @typedef IOAsyncCallback0
    @abstract standard callback function for asynchronous I/O requests with
    no extra arguments beyond a refcon and result code.
    @param refcon The refcon passed into the original I/O request
    @param result The result of the I/O operation
*/
typealias IOAsyncCallback0 = @convention(c) (UnsafeMutablePointer<Void>, IOReturn) -> Void

/*! @typedef IOAsyncCallback1
    @abstract standard callback function for asynchronous I/O requests with
    one extra argument beyond a refcon and result code.
    This is often a count of the number of bytes transferred
    @param refcon The refcon passed into the original I/O request
    @param result The result of the I/O operation
    @param arg0	Extra argument
*/
typealias IOAsyncCallback1 = @convention(c) (UnsafeMutablePointer<Void>, IOReturn, UnsafeMutablePointer<Void>) -> Void

/*! @typedef IOAsyncCallback2
    @abstract standard callback function for asynchronous I/O requests with
    two extra arguments beyond a refcon and result code.
    @param refcon The refcon passed into the original I/O request
    @param result The result of the I/O operation
    @param arg0	Extra argument
    @param arg1	Extra argument
*/
typealias IOAsyncCallback2 = @convention(c) (UnsafeMutablePointer<Void>, IOReturn, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void

/*! @typedef IOAsyncCallback
    @abstract standard callback function for asynchronous I/O requests with
    lots of extra arguments beyond a refcon and result code.
    @param refcon The refcon passed into the original I/O request
    @param result The result of the I/O operation
    @param args	Array of extra arguments
    @param numArgs Number of extra arguments
*/
typealias IOAsyncCallback = @convention(c) (UnsafeMutablePointer<Void>, IOReturn, UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UInt32) -> Void
func OSGetNotificationFromMessage(msg: UnsafeMutablePointer<mach_msg_header_t>, _ index: UInt32, _ type: UnsafeMutablePointer<UInt32>, _ reference: UnsafeMutablePointer<UInt>, _ content: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ size: UnsafeMutablePointer<vm_size_t>) -> kern_return_t
func IOCatalogueSendData(masterPort: mach_port_t, _ flag: UInt32, _ buffer: UnsafePointer<Int8>, _ size: UInt32) -> kern_return_t
func IOCatalogueTerminate(masterPort: mach_port_t, _ flag: UInt32, _ description: UnsafeMutablePointer<Int8>) -> kern_return_t
func IOCatalogueGetData(masterPort: mach_port_t, _ flag: UInt32, _ buffer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ size: UnsafeMutablePointer<UInt32>) -> kern_return_t
func IOCatalogueModuleLoaded(masterPort: mach_port_t, _ name: UnsafeMutablePointer<Int8>) -> kern_return_t
func IOCatalogueReset(masterPort: mach_port_t, _ flag: UInt32) -> kern_return_t
struct IOCFPlugInInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var Probe: (@convention(c) (UnsafeMutablePointer<Void>, CFDictionary!, io_service_t, UnsafeMutablePointer<Int32>) -> IOReturn)!
  var Start: (@convention(c) (UnsafeMutablePointer<Void>, CFDictionary!, io_service_t) -> IOReturn)!
  var Stop: (@convention(c) (UnsafeMutablePointer<Void>) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, version: UInt16, revision: UInt16, Probe: (@convention(c) (UnsafeMutablePointer<Void>, CFDictionary!, io_service_t, UnsafeMutablePointer<Int32>) -> IOReturn)!, Start: (@convention(c) (UnsafeMutablePointer<Void>, CFDictionary!, io_service_t) -> IOReturn)!, Stop: (@convention(c) (UnsafeMutablePointer<Void>) -> IOReturn)!)
}
typealias IOCFPlugInInterface = IOCFPlugInInterfaceStruct
func IOCreatePlugInInterfaceForService(service: io_service_t, _ pluginType: CFUUID!, _ interfaceType: CFUUID!, _ theInterface: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<IOCFPlugInInterface>>>, _ theScore: UnsafeMutablePointer<Int32>) -> kern_return_t
func IODestroyPlugInInterface(interface: UnsafeMutablePointer<UnsafeMutablePointer<IOCFPlugInInterface>>) -> kern_return_t
var kIOCFSerializeToBinary: Int { get }
func IOCFSerialize(object: AnyObject!, _ options: CFOptionFlags) -> CFData!
func IOURLCreatePropertyFromResource(alloc: CFAllocator!, _ url: CFURL!, _ property: CFString!, _ errorCode: UnsafeMutablePointer<Int32>) -> Unmanaged<AnyObject>!
func IOURLCreateDataAndPropertiesFromResource(alloc: CFAllocator!, _ url: CFURL!, _ resourceData: UnsafeMutablePointer<Unmanaged<CFData>?>, _ properties: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ desiredProperties: CFArray!, _ errorCode: UnsafeMutablePointer<Int32>) -> Bool
func IOURLWriteDataAndPropertiesToResource(url: CFURL!, _ dataToWrite: CFData!, _ propertiesToWrite: CFDictionary!, _ errorCode: UnsafeMutablePointer<Int32>) -> Bool
var kIOURLFileExists: String { get }
var kIOURLFileDirectoryContents: String { get }
var kIOURLFileLength: String { get }
var kIOURLFileLastModificationTime: String { get }
var kIOURLFilePOSIXMode: String { get }
var kIOURLFileOwnerID: String { get }
struct IOURLError : RawRepresentable, Equatable {
  init(_ rawValue: Int32)
  init(rawValue: Int32)
  var rawValue: Int32
}
var kIOURLUnknownError: IOURLError { get }
var kIOURLUnknownSchemeError: IOURLError { get }
var kIOURLResourceNotFoundError: IOURLError { get }
var kIOURLResourceAccessViolationError: IOURLError { get }
var kIOURLRemoteHostUnavailableError: IOURLError { get }
var kIOURLImproperArgumentsError: IOURLError { get }
var kIOURLUnknownPropertyKeyError: IOURLError { get }
var kIOURLPropertyKeyUnavailableError: IOURLError { get }
var kIOURLTimeoutError: IOURLError { get }
var kIOCatalogAddDrivers: Int { get }
var kIOCatalogAddDriversNoMatch: Int { get }
var kIOCatalogRemoveDrivers: Int { get }
var kIOCatalogRemoveDriversNoMatch: Int { get }
var kIOCatalogStartMatching: Int { get }
var kIOCatalogRemoveKernelLinker: Int { get }
var kIOCatalogKextdActive: Int { get }
var kIOCatalogKextdFinishedLaunching: Int { get }
var kIOCatalogResetDrivers: Int { get }
var kIOCatalogResetDriversNoMatch: Int { get }
var kIOCatalogGetContents: Int { get }
var kIOCatalogGetModuleDemandList: Int { get }
var kIOCatalogGetCacheMissList: Int { get }
var kIOCatalogGetROMMkextList: Int { get }
var kIOCatalogResetDefault: Int { get }
var kIOCatalogModuleUnload: Int { get }
var kIOCatalogModuleTerminate: Int { get }
var kIOCatalogServiceTerminate: Int { get }
func IOCFUnserialize(buffer: UnsafePointer<Int8>, _ allocator: CFAllocator!, _ options: CFOptionFlags, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> AnyObject!
func IOCFUnserializeBinary(buffer: UnsafePointer<Int8>, _ bufferSize: Int, _ allocator: CFAllocator!, _ options: CFOptionFlags, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> AnyObject!
func IOCFUnserializeWithSize(buffer: UnsafePointer<Int8>, _ bufferSize: Int, _ allocator: CFAllocator!, _ options: CFOptionFlags, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> AnyObject!

/*!
 * @header IOMessage.h
 *
 * Defines message type constants for several IOKit messaging API's.
 *
 */
typealias IOMessage = UInt32
