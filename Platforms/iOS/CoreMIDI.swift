

/*!
	@typedef		MIDIDriverRef
	
	@discussion		Points to a pointer to a MIDIDriverInterface, a CFPlugIn structure (defined in
					MIDIDriver.h) containing function pointers for the driver's methods.  Only the
					MIDIServer may call a driver's methods.
*/
typealias MIDIDriverRef = UnsafeMutablePointer<UnsafeMutablePointer<MIDIDriverInterface>>

/*!
	@typedef		MIDIDeviceListRef
	
	@discussion		A MIDIDeviceListRef is a list of MIDIDeviceRef's.  The devices are not owned by
					the list (i.e., disposing the list does not dispose the devices it references).
*/
typealias MIDIDeviceListRef = MIDIObjectRef

/*!
	@interface		MIDIDriverInterface
	
	@abstract		The COM-style interface to a MIDI driver.
	
	@discussion
		This is the function table interface to a MIDI driver.  Both version 1 and 2 drivers use
		this same table of function pointers (except as noted).

		Drivers which support both the version 1 and version 2 interfaces can tell which version
		of the server is running by checking to see whether kMIDIDriverInterface2ID or
		kMIDIDriverInterfaceID is passed to the factory function.  If the version 1 interface is
		requested, the driver should behave as if it is a version 1 driver.
*/
struct MIDIDriverInterface {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!

  /*!
  		@function FindDevices
  		@discussion
  			This is only called for version 1 drivers.  The server is requesting that the driver
  			detect the devices which are present.  For each device present, the driver should
  			create a MIDIDeviceRef with entities, using MIDIDeviceCreate and
  			MIDIDeviceAddEntity, and add the device to the supplied MIDIDeviceListRef, using
  			MIDIDeviceListAddDevice.
  
  			The driver should not retain any references to the created devices and entities.
  	*/
  var FindDevices: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!

  /*!
  		@function Start
  		@discussion
  			The server is telling the driver to begin MIDI I/O.
  
  			The provided device list contains the devices which were previously located by
  			FindDevices (in the case of a version 1 driver), or the devices which are owned by
  			this driver and are currently in the current MIDISetup (for version 2 drivers).
  
  			The provided devices may or may not still be present.  A version 1 driver should
  			attempt to use as many of the devices as are actually present.
  
  			A version 2 driver may make calls such as MIDISetupAddDevice, MIDIDeviceAddEntity,
  			MIDIDeviceRemoveEntity to dynamically modify the system's current state. For devices
  			in the provided device list which are not present, the driver should set their
  			kMIDIPropertyOffline property to 1.  A version 2 driver may also set up
  			notifications when the IORegistry changes, to detect connection and disconnection of
  			devices it wishes to control.  At these times also, the driver may change the
  			devices' kMIDIPropertyOffline, and dynamically modify the system's current state to
  			reflect the devices which are present.  When passing a CFRunLoopRef to IOKit for
  			notification purposes, the driver must use the server's main runloop, which is
  			obtained with CFRunLoopGetCurrent().
  
  			The driver will probably want to iterate through the destination endpoints and
  			assign their driver refCons, so as to identify multiple destinations when Send() is
  			called.
  
  			The provided device list remains owned by the system and can be assumed to contain
  			only devices owned by this driver.  The driver may retain references to the devices
  			in this list and any it creates while running.
  	*/
  var Start: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!

  /*!
  		@function Stop
  		@discussion
  			The server is telling the driver to terminate MIDI I/O.  All I/O operations that
  			were begun in Start, or as a result of a subsequent IOKit notification, should be
  			terminated.
  	*/
  var Stop: (@convention(c) (MIDIDriverRef) -> OSStatus)!

  /*!
  		@function Configure
  		@discussion
  			not currently used
  	*/
  var Configure: (@convention(c) (MIDIDriverRef, MIDIDeviceRef) -> OSStatus)!

  /*!
  		@function Send
  		@discussion
  			Send a MIDIPacketList to the destination endpoint whose refCons are being passed as
  			arguments.
  	*/
  var Send: (@convention(c) (MIDIDriverRef, UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!

  /*!
  		@function EnableSource
  		@discussion
  			A client has opened or closed a connection, and now the server is telling the driver
  			that input from a particular source either does or does not have any listeners in
  			the system.  The driver may use this information to decide whether to pass messages
  			from the source to the server, and it may even be able to tell the source hardware
  			not to generate incoming MIDI I/O for that source.
  	*/
  var EnableSource: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, DarwinBoolean) -> OSStatus)!

  /*!
  		@function Flush
  		@discussion
  			Only for version 2 drivers (new for CoreMIDI 1.1).
  
  			Drivers which support schedule-ahead, when receiving this message, should unschedule
  			all pending output to the specified destination.  If the destination is null, the
  			driver should unschedule all pending output to all destinations.
  	*/
  var Flush: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!

  /*!
  		@function Monitor		
  		@discussion
  			Only for version 2 drivers (new for CoreMIDI 1.1).
  
  			Some specialized drivers (e.g. a MIDI monitor display) may wish to intercept and
  			look at all outgoing MIDI messages.  After a driver calls
  			MIDIDriverEnableMonitoring(true) on itself, this function is called with the
  			outgoing MIDI packets for all destinations in the system.  The Monitor function
  			cannot rely on the MIDI events arriving in order, due to MIDIServer's schedule-ahead
  			facilities.
  	*/
  var Monitor: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIPacketList>) -> OSStatus)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, FindDevices: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!, Start: (@convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus)!, Stop: (@convention(c) (MIDIDriverRef) -> OSStatus)!, Configure: (@convention(c) (MIDIDriverRef, MIDIDeviceRef) -> OSStatus)!, Send: (@convention(c) (MIDIDriverRef, UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!, EnableSource: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, DarwinBoolean) -> OSStatus)!, Flush: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> OSStatus)!, Monitor: (@convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIPacketList>) -> OSStatus)!)
}

/*!
	@function		MIDIDeviceCreate

	@discussion		Drivers call this function to create new MIDIDevice objects
					corresponding to the hardware that is present.
					
					Non-drivers may call this function as of CoreMIDI 1.1, to
					create external devices.
	
	@param			owner
						The driver creating the device.  NULL if a non-driver.
	@param			name
						The name of the new device.
	@param			manufacturer
						The name of the device's manufacturer.
	@param			model
						The device's model name.
	@param			outDevice
						On successful return, points to the newly-created device.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIDeviceCreate(owner: MIDIDriverRef, _ name: CFString!, _ manufacturer: CFString!, _ model: CFString!, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus

/*!
	@function		MIDIDeviceDispose

	@discussion		Drivers may call this function to dispose MIDIDevice objects
					which have not yet been added to the system via MIDISetupAddDevice.
					Once a device has been added to the system with MIDISetupAddDevice,
					the driver must not use this call to destroy it; it must
					use MIDISetupRemoveDevice to do so.
					
					Non-drivers do not have access to this function; they must call
					MIDISetupAddDevice and MIDISetupRemoveDevice.
	
	@param			device
						The device to be disposed.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIDeviceDispose(device: MIDIDeviceRef) -> OSStatus

/*!
	@function		MIDIDeviceListGetNumberOfDevices

	@discussion		Returns the number of devices in a device list.
	
	@param			devList
						The device list.
	@result			The number of devices in the list, or 0 if an error occurred.
*/
@available(iOS 4.2, *)
func MIDIDeviceListGetNumberOfDevices(devList: MIDIDeviceListRef) -> Int

/*!
	@function		MIDIDeviceListGetDevice

	@discussion		Return one of the devices in a device list.
	
	@param			devList
						The device list.
	@param			index0
						The index (0...MIDIDeviceListGetNumberOfDevices()-1) of the device
						to return.
	@result			A reference to a device, or NULL if an error occurred.
*/
@available(iOS 4.2, *)
func MIDIDeviceListGetDevice(devList: MIDIDeviceListRef, _ index0: Int) -> MIDIDeviceRef

/*!
	@function		MIDIDeviceListAddDevice

	@discussion		Add a device to a device list.
	
	@param			devList
						The device list.
	@param			dev
						The device to add to the list.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIDeviceListAddDevice(devList: MIDIDeviceListRef, _ dev: MIDIDeviceRef) -> OSStatus

/*!
	@function		MIDIDeviceListDispose

	@discussion		Dispose a device list, but not the contained devices.
	
	@param			devList
						The device list to be disposed.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIDeviceListDispose(devList: MIDIDeviceListRef) -> OSStatus

/*!
	@function		MIDIEndpointSetRefCons

	@discussion		Drivers need an efficient way to translate from a MIDIEndpoint (source or
					destination) to their own internal data structures corresponding to
					that endpoint.  This function provides a way for the driver to
					assign its own refCons to endpoints.
					
					These refCons are passed back to the driver in its Send() and Flush()
					methods.
					
					RefCons are not persistent (i.e. they are not saved as part of a 
					MIDISetup).  They need to be re-initialized in each call to Start().
					
					A typical use is to use one refCon to refer to a device, and a second
					to refer to a port on the device.
	
	@param			endpt
						The endpoint whose refCons are to be set
	@param			ref1
						The first refCon.
	@param			ref2
						The second refCon.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIEndpointSetRefCons(endpt: MIDIEndpointRef, _ ref1: UnsafeMutablePointer<Void>, _ ref2: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		MIDIEndpointGetRefCons

	@discussion		Obtain the refCons assigned to the endpoints 
	
	@param			endpt
						The endpoint whose refCons are to be return
	@param			ref1
						On exit, the first refCon.
	@param			ref2
						On exit, the second refCon.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIEndpointGetRefCons(endpt: MIDIEndpointRef, _ ref1: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ ref2: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus

/*!
	@function		MIDIGetDriverIORunLoop

	@discussion		Drivers typically need to receive asynchronous I/O completion callbacks
					on a high-priority thread.  To save drivers from the trouble of 
					creating their own threads for this purpose, and to make efficient
					use of system resources, the MIDIServer provides a thread which
					drivers may use.
					
					Drivers should do as little work as possible in this thread; typically,
					just dequeueing and encoding output packets, and decoding input packets
					into MIDIPacketLists to be passed to MIDIReceived.
	
					This is a realtime-priority thread and shouldn't be used for anything other 
					than I/O.  For lower-priority tasks, drivers can use the runloop which 
					was current when they were constructed.

	@result			The CFRunLoopRef of the server's driver I/O thread.
*/
@available(iOS 4.2, *)
func MIDIGetDriverIORunLoop() -> Unmanaged<CFRunLoop>!

/*!
	@function		MIDIGetDriverDeviceList

	@discussion		Returns the list of devices which are in the current MIDISetup
					and which were created/owned by the specified driver.
	
					The returned device list should be disposed (using MIDIDeviceListDispose)
					by the caller.
					
	@param			driver
						The driver whose devices are to be returned.

	@result			The requested device list.
*/
@available(iOS 4.2, *)
func MIDIGetDriverDeviceList(driver: MIDIDriverRef) -> MIDIDeviceListRef
@available(iOS 4.2, *)
let MIDINetworkBonjourServiceType: String
@available(iOS 4.2, *)
let MIDINetworkNotificationContactsDidChange: String
@available(iOS 4.2, *)
let MIDINetworkNotificationSessionDidChange: String
enum MIDINetworkConnectionPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoOne
  case HostsInContactList
  case Anyone
}
@available(iOS 4.2, *)
class MIDINetworkHost : NSObject {
  convenience init(name: String, address: String, port: Int)
  convenience init(name: String, netService: NSNetService)
  convenience init(name: String, netServiceName: String, netServiceDomain: String)
  func hasSameAddressAs(other: MIDINetworkHost) -> Bool
  var name: String { get }
  var address: String { get }
  var port: Int { get }
  var netServiceName: String? { get }
  var netServiceDomain: String? { get }
  init()
}
@available(iOS 4.2, *)
class MIDINetworkConnection : NSObject {
  convenience init(host: MIDINetworkHost)
  var host: MIDINetworkHost { get }
  init()
}
@available(iOS 4.2, *)
class MIDINetworkSession : NSObject {
  class func defaultSession() -> MIDINetworkSession
  var isEnabled: Bool
  var networkPort: Int { get }
  var networkName: String { get }
  var localName: String { get }
  var connectionPolicy: MIDINetworkConnectionPolicy
  func contacts() -> Set<MIDINetworkHost>
  func addContact(contact: MIDINetworkHost) -> Bool
  func removeContact(contact: MIDINetworkHost) -> Bool
  func connections() -> Set<MIDINetworkConnection>
  func addConnection(connection: MIDINetworkConnection) -> Bool
  func removeConnection(connection: MIDINetworkConnection) -> Bool
  func sourceEndpoint() -> MIDIEndpointRef
  func destinationEndpoint() -> MIDIEndpointRef
  init()
}
var kMIDIInvalidClient: OSStatus { get }
var kMIDIInvalidPort: OSStatus { get }
var kMIDIWrongEndpointType: OSStatus { get }
var kMIDINoConnection: OSStatus { get }
var kMIDIUnknownEndpoint: OSStatus { get }
var kMIDIUnknownProperty: OSStatus { get }
var kMIDIWrongPropertyType: OSStatus { get }
var kMIDINoCurrentSetup: OSStatus { get }
var kMIDIMessageSendErr: OSStatus { get }
var kMIDIServerStartErr: OSStatus { get }
var kMIDISetupFormatErr: OSStatus { get }
var kMIDIWrongThread: OSStatus { get }
var kMIDIObjectNotFound: OSStatus { get }
var kMIDIIDNotUnique: OSStatus { get }
var kMIDINotPermitted: OSStatus { get }

/*!
	@typedef		MIDIObjectRef
	@abstract		The base class of many CoreMIDI objects.
	@discussion
		MIDIObject is the base class for many of the objects in CoreMIDI.  They have properties,
		and often an "owner" object, from which they inherit any properties they do not
		themselves have.

		Developers may add their own private properties, whose names must begin with their
		company's inverted domain name, as in Java package names, but with underscores instead
		of dots, e.g.: com_apple_APrivateAppleProperty
*/
typealias MIDIObjectRef = UInt32

/*!
	@typedef		MIDIClientRef
	@abstract		An object maintaining per-client state.
	@discussion
		Derives from MIDIObjectRef, does not have an owner object.

		To use CoreMIDI, an application creates a MIDIClientRef, to which it can add
		MIDIPortRef's, through which it can send and receive MIDI.
*/
typealias MIDIClientRef = MIDIObjectRef

/*!
	@typedef		MIDIPortRef
	@abstract		A MIDI connection port owned by a client.
	@discussion
		Derives from MIDIObjectRef, owned by a MIDIClientRef.

		A MIDIPortRef, which may be an input port or output port, is an object through which a
		client may communicate with any number of MIDI sources or destinations.
*/
typealias MIDIPortRef = MIDIObjectRef

/*!
	@typedef		MIDIDeviceRef
	@abstract		A MIDI device or external device, containing entities.
	@discussion
		Derives from MIDIObjectRef, does not have an owner object.

		A MIDI device, which either attaches directly to the computer and is controlled by a
		MIDI driver, or which is "external," meaning that it is connected to a driver-controlled
		device via a standard MIDI cable.

		A MIDIDeviceRef has properties and contains MIDIEntityRef's.
*/
typealias MIDIDeviceRef = MIDIObjectRef

/*!
	@typedef		MIDIEntityRef
	@abstract		A MIDI entity, owned by a device, containing endpoints.
	@discussion
		Derives from MIDIObjectRef, owned by a MIDIDeviceRef.

		Devices may have multiple logically distinct sub-components, e.g. a MIDI synthesizer and
		a pair of MIDI ports, both addressable via a USB port.

		By grouping a device's endpoints into entities, the system has enough information for an
		application to make reasonable assumptions about how to communicate in a bi-directional
		manner with each entity, as is desirable in MIDI librarian applications.

		These sub-components are MIDIEntityRef's.
*/
typealias MIDIEntityRef = MIDIObjectRef

/*!
	@typedef		MIDIEndpointRef
	@abstract		A MIDI source or destination, owned by an entity.
	@discussion
		Derives from MIDIObjectRef, owned by a MIDIEntityRef, unless it is a virtual endpoint,
		in which case there is no owning entity.

		Entities have any number of MIDIEndpointRef's, sources and destinations of 16-channel
		MIDI streams.
*/
typealias MIDIEndpointRef = MIDIObjectRef

/*!
	@typedef		MIDITimeStamp
	@abstract		A host clock time.
	@discussion
		A host clock time representing the time of an event, as returned by
		mach_absolute_time() or UpTime().

		Since MIDI applications will tend to do a fair amount of math with the times of events,
		it's more convenient to use a UInt64 than an AbsoluteTime.
		
		See CoreAudio/HostTime.h.
*/
typealias MIDITimeStamp = UInt64

/*!
	@enum			MIDIObjectType
	@abstract		Signifies the type of a MIDIObject.
	@discussion
		Signifies the real type of a MIDIObjectRef instance.
*/
enum MIDIObjectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Other
  case Device
  case Entity
  case Source
  case Destination
  case ExternalDevice
  case ExternalEntity
  case ExternalSource
  case ExternalDestination
}
let kMIDIObjectType_ExternalMask: MIDIObjectType

/*!
	@typedef		MIDIUniqueID
	@abstract		A unique identifier for a MIDIObjectRef.
	@discussion
		An integer which uniquely identifies a MIDIObjectRef.
*/
typealias MIDIUniqueID = Int32
var kMIDIInvalidUniqueID: MIDIUniqueID { get }

/*!
	@typedef		MIDINotifyProc
	@abstract		A callback function for notifying clients of state changes.
	@discussion
		This callback function is called when some aspect of the current MIDI setup changes. It
		is called on the runloop (thread) on which MIDIClientCreate was first called.

	@param			message	
						A structure containing information about what changed.
	@param			refCon
						The client's refCon passed to MIDIClientCreate.
*/
typealias MIDINotifyProc = @convention(c) (UnsafePointer<MIDINotification>, UnsafeMutablePointer<Void>) -> Void

/*!
	@typedef		MIDINotifyBlock
	@abstract		A callback block for notifying clients of state changes.
	@discussion
		This block is called when some aspect of the current MIDI setup changes. It
		is called on an arbitrary thread chosen by the implementation; thread-safety
		is the responsibility of the block.

	@param			message	
						A structure containing information about what changed.
*/
typealias MIDINotifyBlock = (UnsafePointer<MIDINotification>) -> Void

/*!
	@typedef		MIDIReadProc
	@abstract		A function receiving MIDI input.
	@discussion
		This is a callback function through which a client receives incoming MIDI messages.

		A MIDIReadProc function pointer is passed to the MIDIInputPortCreate and
		MIDIDestinationCreate functions.  The CoreMIDI framework will create a high-priority
		receive thread on your client's behalf, and from that thread, your MIDIReadProc will be
		called when incoming MIDI messages arrive.

	@param			pktlist
						The incoming MIDI message(s).
	@param			readProcRefCon	
						The refCon you passed to MIDIInputPortCreate or
						MIDIDestinationCreate
	@param			srcConnRefCon
						A refCon you passed to MIDIPortConnectSource, which
						identifies the source of the data.
*/
typealias MIDIReadProc = @convention(c) (UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void

/*!
	@typedef		MIDIReadBlock
	@abstract		A block receiving MIDI input.
	@discussion
		This is a callback block through which a client receives incoming MIDI messages.

		A MIDIReadBlock is passed to the MIDIInputPortCreateWithBlock and
		MIDIDestinationCreateWithBlock functions.  The CoreMIDI framework will create a
		high-priority receive thread on your client's behalf, and from that thread, your
		MIDIReadProc will be called when incoming MIDI messages arrive.

	@param			pktlist
						The incoming MIDI message(s).
	@param			srcConnRefCon
						A refCon you passed to MIDIPortConnectSource, which
						identifies the source of the data.
*/
typealias MIDIReadBlock = (UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>) -> Void

/*!
	@typedef		MIDICompletionProc
	@abstract		A function called when a system-exclusive event has been completely sent.
	@discussion
		Callback function to notify the client of the completion of a call to MIDISendSysex.
	
	@param			request
						The MIDISysexSendRequest which has completed, or been
						aborted.
*/
typealias MIDICompletionProc = @convention(c) (UnsafeMutablePointer<MIDISysexSendRequest>) -> Void

/*!
	@struct			MIDIPacket
	@abstract		A collection of simultaneous MIDI events.
	
	@field			timeStamp
						The time at which the events occurred, if receiving MIDI,
						or, if sending MIDI, the time at which the events are to
						be played.  Zero means "now."  The time stamp applies
						to the first MIDI byte in the packet.
	@field			length		
						The number of valid MIDI bytes which follow, in data. (It
						may be larger than 256 bytes if the packet is dynamically
						allocated.)
	@field			data
						A variable-length stream of MIDI messages.  Running status
						is not allowed.  In the case of system-exclusive
						messages, a packet may only contain a single message, or
						portion of one, with no other MIDI events.
						
						The MIDI messages in the packet must always be complete,
						except for system-exclusive.

						(This is declared to be 256 bytes in length so clients
						don't have to create custom data structures in simple
						situations.)
*/
struct MIDIPacket {
  var timeStamp: MIDITimeStamp
  var length: UInt16
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(timeStamp: MIDITimeStamp, length: UInt16, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}

/*!
	@struct			MIDIPacketList
	@abstract		A list of MIDI events being received from, or being sent to,
					one endpoint.
	@discussion
					The timestamps in the packet list must be in ascending order.
					
					Note that the packets in the list, while defined as an array, may not be
					accessed as an array, since they are variable-length.  To iterate through
					the packets in a packet list, use a loop such as:
<pre>
@textblock
  MIDIPacket *packet = &packetList->packet[0];
  for (int i = 0; i < packetList->numPackets; ++i) {
    ...
    packet = MIDIPacketNext(packet);
  }
@/textblock
</pre>
	
					The MIDIPacketNext macro is especially important when considering that
					the alignment requirements of MIDIPacket may differ between CPU architectures.
					On Intel and PowerPC, MIDIPacket is unaligned. On ARM, MIDIPacket must be
					4-byte aligned.
	
	@field			numPackets
						The number of MIDIPackets in the list.
	@field			packet
						An open-ended array of variable-length MIDIPackets.
*/
struct MIDIPacketList {
  var numPackets: UInt32
  var packet: (MIDIPacket)
  init()
  init(numPackets: UInt32, packet: (MIDIPacket))
}

/*!
	@struct			MIDISysexSendRequest
	@abstract		A request to transmit a system-exclusive event.
	
	@field			destination
						The endpoint to which the event is to be sent.
	@field			data
						Initially, a pointer to the sys-ex event to be sent.
						MIDISendSysex will advance this pointer as bytes are
						sent.
	@field			bytesToSend
						Initially, the number of bytes to be sent.  MIDISendSysex
						will decrement this counter as bytes are sent.
	@field			complete
						The client may set this to true at any time to abort
						transmission.  The implementation sets this to true when
						all bytes have been sent.
	@field			completionProc
						Called when all bytes have been sent, or after the client
						has set complete to true.
	@field			completionRefCon
						Passed as a refCon to completionProc.

	@discussion
		This represents a request to send a single system-exclusive MIDI event to
		a MIDI destination asynchronously.
*/
struct MIDISysexSendRequest {
  var destination: MIDIEndpointRef
  var data: UnsafePointer<UInt8>
  var bytesToSend: UInt32
  var complete: DarwinBoolean
  var reserved: (UInt8, UInt8, UInt8)
  var completionProc: MIDICompletionProc
  var completionRefCon: UnsafeMutablePointer<Void>
}

/*!
	@enum		MIDINotificationMessageID
	@abstract	Signifies the type of a MIDINotification.

	@constant	kMIDIMsgSetupChanged	Some aspect of the current MIDISetup
										has changed.  No data.  Should ignore this
										message if messages 2-6 are handled.
	@constant	kMIDIMsgObjectAdded		A device, entity or endpoint was added.
										Structure is MIDIObjectAddRemoveNotification.
										New in Mac OS X 10.2.
	@constant	kMIDIMsgObjectRemoved	A device, entity or endpoint was removed.
										Structure is MIDIObjectAddRemoveNotification.
										New in Mac OS X 10.2.
	@constant	kMIDIMsgPropertyChanged	An object's property was changed.
										Structure is MIDIObjectPropertyChangeNotification.
										New in Mac OS X 10.2.
	@constant	kMIDIMsgThruConnectionsChanged	A persistent MIDI Thru connection was created
										or destroyed.  No data.  New in Mac OS X 10.2.
	@constant	kMIDIMsgSerialPortOwnerChanged	A persistent MIDI Thru connection was created
										or destroyed.  No data.  New in Mac OS X 10.2.
	@constant	kMIDIMsgIOError			A driver I/O error occurred.
*/
enum MIDINotificationMessageID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MsgSetupChanged
  case MsgObjectAdded
  case MsgObjectRemoved
  case MsgPropertyChanged
  case MsgThruConnectionsChanged
  case MsgSerialPortOwnerChanged
  case MsgIOError
}

/*!
	@struct			MIDINotification
	@abstract		A message describing a system state change.
	@discussion
		A MIDINotification is a structure passed to a MIDINotifyProc or MIDINotifyBlock, when
		CoreMIDI wishes to inform a client of a change in the state of the system.
	
	@field			messageID
						type of message
	@field			messageSize
						size of the entire message, including messageID and
						messageSize
*/
struct MIDINotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32)
}

/*!
	@struct			MIDIObjectAddRemoveNotification
	@abstract		A message describing the addition or removal of an object.
	
	@field			messageID
						type of message
	@field			messageSize
						size of the entire message, including messageID and messageSize
	@field			parent
						the parent of the added or removed object (possibly NULL)
	@field			parentType
						the type of the parent object (undefined if parent is NULL)
	@field			child
						the added or removed object
	@field			childType
						the type of the added or removed object
*/
struct MIDIObjectAddRemoveNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var parent: MIDIObjectRef
  var parentType: MIDIObjectType
  var child: MIDIObjectRef
  var childType: MIDIObjectType
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, parent: MIDIObjectRef, parentType: MIDIObjectType, child: MIDIObjectRef, childType: MIDIObjectType)
}

/*!
	@struct			MIDIObjectPropertyChangeNotification
	@abstract		A message describing the addition or removal of an object.
	
	@field			messageID
						type of message
	@field			messageSize
						size of the entire message, including messageID and messageSize
	@field			object
						the object whose property has changed
	@field			objectType
						the type of the object whose property has changed
	@field			propertyName
						the name of the changed property
*/
struct MIDIObjectPropertyChangeNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var object: MIDIObjectRef
  var objectType: MIDIObjectType
  var propertyName: Unmanaged<CFString>
}
struct MIDIIOErrorNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var driverDevice: MIDIDeviceRef
  var errorCode: OSStatus
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, driverDevice: MIDIDeviceRef, errorCode: OSStatus)
}

/*!
	@constant		kMIDIPropertyName
	@discussion
		device/entity/endpoint property, string
	
		Devices, entities, and endpoints may all have names.  The recommended way to display an
		endpoint's name is to ask for the endpoint name, and display only that name if it is
		unique.  If it is non-unique, prepend the device name.

		A setup editor may allow the user to set the names of both driver-owned and external
		devices.
*/
@available(iOS 4.2, *)
let kMIDIPropertyName: CFString

/*!
	@constant		kMIDIPropertyManufacturer
	@discussion
		device/endpoint property, string

		Drivers should set this property on their devices.

		Setup editors may allow the user to set this property on external devices.

		Creators of virtual endpoints may set this property on their endpoints.
*/
@available(iOS 4.2, *)
let kMIDIPropertyManufacturer: CFString

/*!
	@constant		kMIDIPropertyModel
	@discussion
		device/endpoint property, string

		Drivers should set this property on their devices.

		Setup editors may allow the user to set this property on external devices.

		Creators of virtual endpoints may set this property on their endpoints.
*/
@available(iOS 4.2, *)
let kMIDIPropertyModel: CFString

/*!
	@constant		kMIDIPropertyUniqueID
	@discussion
		devices, entities, endpoints all have unique ID's, integer

		The system assigns unique ID's to all objects.  Creators of virtual endpoints may set
		this property on their endpoints, though doing so may fail if the chosen ID is not
		unique.
*/
@available(iOS 4.2, *)
let kMIDIPropertyUniqueID: CFString

/*!
	@constant		kMIDIPropertyDeviceID
	@discussion
		device/entity property, integer

		The entity's system-exclusive ID, in user-visible form

		Drivers may set this property on their devices or entities.

		Setup editors may allow the user to set this property on external devices.
*/
@available(iOS 4.2, *)
let kMIDIPropertyDeviceID: CFString

/*!
	@constant		kMIDIPropertyReceiveChannels
	@discussion
		endpoint property, integer

		The value is a bitmap of channels on which the object receives: 1=ch 1, 2=ch 2, 4=ch 3
		... 0x8000=ch 16.

		Drivers may set this property on their entities or endpoints.

		Setup editors may allow the user to set this property on external endpoints.

		Virtual destination may set this property on their endpoints.
*/
@available(iOS 4.2, *)
let kMIDIPropertyReceiveChannels: CFString

/*!
	@constant		kMIDIPropertyTransmitChannels
	@discussion
		endpoint property, integer

		The value is a bitmap of channels on which the object transmits: 1=ch 1, 2=ch 2, 4=ch 3
		... 0x8000=ch 16.
*/
@available(iOS 4.2, *)
let kMIDIPropertyTransmitChannels: CFString

/*!
	@constant		kMIDIPropertyMaxSysExSpeed
	@discussion
		device/entity/endpoint property, integer

		Set by the owning driver; should not be touched by other clients.
		The value is the maximum rate, in bytes/second, at which sysex messages may
		be sent reliably to this object. (The default value is 3125, as with MIDI 1.0)
*/
@available(iOS 4.2, *)
let kMIDIPropertyMaxSysExSpeed: CFString

/*!
	@constant		kMIDIPropertyAdvanceScheduleTimeMuSec
	@discussion
		device/entity/endpoint property, integer

		Set by the owning driver; should not be touched by other clients. If it is non-zero,
		then it is a recommendation of how many microseconds in advance clients should schedule
		output. Clients should treat this value as a minimum.  For devices with a non-zero
		advance schedule time, drivers will receive outgoing messages to the device at the time
		they are sent by the client, via MIDISend, and the driver is responsible for scheduling
		events to be played at the right times according to their timestamps.

		As of CoreMIDI 1.3, this property may also be set on virtual destinations (but only the
		creator of the destination should do so). When a client sends to a virtual destination
		with an advance schedule time of 0, the virtual destination receives its messages at
		their scheduled delivery time.  If a virtual destination has a non-zero advance schedule
		time, it receives timestamped messages as soon as they are sent, and must do its own
		internal scheduling of received events.
*/
@available(iOS 4.2, *)
let kMIDIPropertyAdvanceScheduleTimeMuSec: CFString

/*!
	@constant		kMIDIPropertyIsEmbeddedEntity
	@discussion
		entity/endpoint property, integer

		0 if there are external MIDI connectors, 1 if not.
*/
@available(iOS 4.2, *)
let kMIDIPropertyIsEmbeddedEntity: CFString

/*!
	@constant		kMIDIPropertyIsBroadcast
	@discussion
		entity/endpoint property, integer

		1 if the endpoint broadcasts messages to all of the other endpoints in the device, 0 if
		not.  Set by the owning driver; should not be touched by other clients.
*/
@available(iOS 4.2, *)
let kMIDIPropertyIsBroadcast: CFString

/*!
	@constant		kMIDIPropertySingleRealtimeEntity
	@discussion
		device property, integer

		Some MIDI interfaces cannot route MIDI realtime messages to individual outputs; they are
		broadcast.  On such devices the inverse is usually also true -- incoming realtime
		messages cannot be identified as originating from any particular source.

		When this property is set on a driver device, it signifies the 0-based index of the
		entity on which incoming realtime messages from the device will appear to have
		originated from.
*/
@available(iOS 4.2, *)
let kMIDIPropertySingleRealtimeEntity: CFString

/*!
	@constant		kMIDIPropertyConnectionUniqueID
	@discussion
		device/entity/endpoint property, integer or CFDataRef

		UniqueID of an external device/entity/endpoint attached to this one. As of Mac OS X
		10.3, Audio MIDI Setup maintains endpoint-to-external endpoint connections (in 10.2, it
		connected devices to devices).

		The property is non-existant or 0 if there is no connection.
		
		Beginning with CoreMIDI 1.3 (Mac OS X 10.2), this property may also be a CFDataRef containing an array of
		big-endian SInt32's, to allow specifying that a driver object connects to multiple
		external objects (via MIDI thru-ing or splitting).

		This property may also exist for external devices/entities/endpoints, in which case it
		signifies a MIDI Thru connection to another external device/entity/endpoint (again,
		it is strongly recommended that it be an endpoint).
*/
@available(iOS 4.2, *)
let kMIDIPropertyConnectionUniqueID: CFString

/*!
	@constant		kMIDIPropertyOffline
	@discussion
		device/entity/endpoint property, integer

		1 = device is offline (is temporarily absent), 0 = present. Set by the owning driver, on
		the device; should not be touched by other clients. Property is inherited from the
		device by its entities and endpoints.
*/
@available(iOS 4.2, *)
let kMIDIPropertyOffline: CFString

/*!
	@constant		kMIDIPropertyPrivate
	@discussion
		device/entity/endpoint property, integer

		1 = endpoint is private, hidden from other clients. May be set on a device or entity,
		but they will still appear in the API; only affects whether the owned endpoints are
		hidden.
*/
@available(iOS 4.2, *)
let kMIDIPropertyPrivate: CFString

/*!
	@constant		kMIDIPropertyDriverOwner
	@discussion
		device/entity/endpoint property, string

		Name of the driver that owns a device. Set by the owning driver, on the device; should
		not be touched by other clients. Property is inherited from the device by its entities
		and endpoints.
*/
@available(iOS 4.2, *)
let kMIDIPropertyDriverOwner: CFString

/*!
	@constant		kMIDIPropertyNameConfiguration
	@discussion
		device/entity/endpoint property, CFDictionary

		This specifies the device's current patch, note and control name values using the
		MIDINameDocument XML format.  This specification requires the use of higher-level,
		OS-specific constructs outside of the specification, to fully define the current names
		for a device.

		The MIDINameConfiguration property is implementated as a CFDictionary:

		key "master" maps to a CFDataRef containing an AliasHandle referring to the device's
		master name document. This is deprecated as of Mac OS X 10.10.
		
		key "masterDocumentPath" maps to a CFStringRef containing the filesystem path to the device's
		master name document. (This is new as of Mac OS X 10.10, but since the CoreMIDI
		implementation does not parse this dictionary, the convention can be safely ported
		to earlier versions of Mac OS X.)

		key "banks" maps to a CFDictionaryRef.  This dictionary's keys are CFStringRef names of
		patchBank elements in the master document, and its values are each a CFDictionaryRef:
		key "file" maps to a CFDataRef containing an AliasHandle to a document containing
		patches that override those in the master document, and key "patchNameList" maps to a
		CFStringRef which is the name of the patchNameList element in the overriding document.

		key "currentChannelNameSets" maps to a 16-element CFArrayRef, each element of which is a
		CFStringRef of the name of the current mode for each of the 16 MIDI channels.

		key "currentDeviceMode" maps to a CFStringRef containing the name of the device's mode.

		Clients setting this property must take particular care to preserve dictionary values
		other than the ones they are interested in changing, and to properly structure the
		dictionary.
*/
@available(iOS 4.2, *)
let kMIDIPropertyNameConfiguration: CFString

/*!
	@constant		kMIDIPropertyImage
	@discussion
		device property, CFStringRef which is a full POSIX path to a device or external device's
		icon, stored in any standard graphic file format such as JPEG, GIF, PNG and TIFF are all
		acceptable.  (See CFURL for functions to convert between POSIX paths and other ways of
		specifying files.)  The image's maximum size should be 128x128.

		Drivers should set the icon on the devices they add.

		A studio setup editor should allow the user to choose icons for external devices.
*/
@available(iOS 4.2, *)
let kMIDIPropertyImage: CFString

/*!
	@constant		kMIDIPropertyDriverVersion
	@discussion
		device/entity/endpoint property, integer, returns the driver version API of the owning
		driver (only for driver- owned devices).  Drivers need not set this property;
		applications should not write to it.
*/
@available(iOS 4.2, *)
let kMIDIPropertyDriverVersion: CFString

/*!
	@constant		kMIDIPropertySupportsGeneralMIDI
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity implements
		the General MIDI specification.
*/
@available(iOS 4.2, *)
let kMIDIPropertySupportsGeneralMIDI: CFString

/*!
	@constant		kMIDIPropertySupportsMMC
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity implements
		the MIDI Machine Control portion of the MIDI specification.
*/
@available(iOS 4.2, *)
let kMIDIPropertySupportsMMC: CFString

/*!
	@constant		kMIDIPropertyCanRoute
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity can route
		MIDI messages to or from other external MIDI devices (as with MIDI patch bays). This
		should NOT be set on devices which are controlled by drivers.
*/
@available(iOS 4.2, *)
let kMIDIPropertyCanRoute: CFString

/*!
	@constant		kMIDIPropertyReceivesClock
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity  responds
		to MIDI beat clock messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyReceivesClock: CFString

/*!
	@constant		kMIDIPropertyReceivesMTC
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity responds
		to MIDI Time Code messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyReceivesMTC: CFString

/*!
	@constant		kMIDIPropertyReceivesNotes
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity responds
		to MIDI Note On messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyReceivesNotes: CFString

/*!
	@constant		kMIDIPropertyReceivesProgramChanges
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity responds
		to MIDI program change messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyReceivesProgramChanges: CFString

/*!
	@constant		kMIDIPropertyReceivesBankSelectMSB
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity responds
		to MIDI bank select MSB messages (control 0).
*/
@available(iOS 4.2, *)
let kMIDIPropertyReceivesBankSelectMSB: CFString

/*!
	@constant		kMIDIPropertyReceivesBankSelectLSB
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity responds
		to MIDI bank select LSB messages (control 32).
*/
@available(iOS 4.2, *)
let kMIDIPropertyReceivesBankSelectLSB: CFString

/*!
	@constant		kMIDIPropertyTransmitsClock
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity transmits
		MIDI beat clock messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsClock: CFString

/*!
	@constant		kMIDIPropertyTransmitsMTC
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity transmits
		MIDI Time Code messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsMTC: CFString

/*!
	@constant		kMIDIPropertyTransmitsNotes
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity transmits
		MIDI note messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsNotes: CFString

/*!
	@constant		kMIDIPropertyTransmitsProgramChanges
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity transmits
		MIDI program change messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsProgramChanges: CFString

/*!
	@constant		kMIDIPropertyTransmitsBankSelectMSB
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity transmits
		MIDI bank select MSB messages (control 0).
*/
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsBankSelectMSB: CFString

/*!
	@constant		kMIDIPropertyTransmitsBankSelectLSB
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity transmits
		MIDI bank select LSB messages (control 32).
*/
@available(iOS 4.2, *)
let kMIDIPropertyTransmitsBankSelectLSB: CFString

/*!
	@constant		kMIDIPropertyPanDisruptsStereo
	@discussion
		device/entity property, integer (0/1). Indicates whether the MIDI pan messages (control
		10), when sent to the device or entity, cause undesirable effects when playing stereo
		sounds (e.g. converting the signal to mono).
*/
@available(iOS 4.2, *)
let kMIDIPropertyPanDisruptsStereo: CFString

/*!
	@constant		kMIDIPropertyIsSampler
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity plays
		audio samples in response to MIDI note messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyIsSampler: CFString

/*!
	@constant		kMIDIPropertyIsDrumMachine
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity's sound
		presets tend to be collections of non-transposable samples (e.g. drum kits).
*/
@available(iOS 4.2, *)
let kMIDIPropertyIsDrumMachine: CFString

/*!
	@constant		kMIDIPropertyIsMixer
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity mixes
		external audio signals, controlled by MIDI messages.
*/
@available(iOS 4.2, *)
let kMIDIPropertyIsMixer: CFString

/*!
	@constant		kMIDIPropertyIsEffectUnit
	@discussion
		device/entity property, integer (0/1). Indicates whether the device or entity is
		primarily a MIDI-controlled audio effect unit (i.e. does not generate sound on its own).
*/
@available(iOS 4.2, *)
let kMIDIPropertyIsEffectUnit: CFString

/*!
	@constant		kMIDIPropertyMaxReceiveChannels
	@discussion
		device/entity property, integer (0-16). Indicates the maximum number of MIDI channels on
		which a device may simultaneously receive MIDI Channel Messages. Common values are 0
		(devices which only respond to System Messages), 1 (non-multitimbral devices), and 16
		(fully multitimbral devices). Other values are possible, for example devices which are
		multi-timbral but have fewer than 16 "parts".
*/
@available(iOS 4.2, *)
let kMIDIPropertyMaxReceiveChannels: CFString

/*!
	@constant		kMIDIPropertyMaxTransmitChannels
	@discussion
		device/entity property, integer (0/1). Indicates the maximum number of MIDI channels on
		which a device may simultaneously transmit MIDI Channel Messages. Common values are 0, 1
		and 16.
*/
@available(iOS 4.2, *)
let kMIDIPropertyMaxTransmitChannels: CFString

/*!
	@constant		kMIDIPropertyDriverDeviceEditorApp
	@discussion
		device property, string, contains the full path to an application which knows how to
		configure this driver-owned devices. Drivers may set this property on their owned
		devices. Applications must not write to it.
*/
@available(iOS 4.2, *)
let kMIDIPropertyDriverDeviceEditorApp: CFString

/*!
	@constant		kMIDIPropertySupportsShowControl
	@discussion
		device/entity property, integer (0/1). Indicates whether the device implements the MIDI
		Show Control specification.
*/
@available(iOS 4.2, *)
let kMIDIPropertySupportsShowControl: CFString

/*!
	@constant		kMIDIPropertyDisplayName
	@discussion
		device/entity/endpoint property, string.

		Provides the Apple-recommended user-visible name for an endpoint, by combining the
		device and endpoint names.

		For objects other than endpoints, the display name is the same as the name.
*/
@available(iOS 4.2, *)
let kMIDIPropertyDisplayName: CFString

/*!
	@function		MIDIClientCreate

	@abstract 		Creates a MIDIClient object.

	@param			name
						The client's name.
	@param			notifyProc	
						An optional (may be NULL) callback function through which the client
						will receive notifications of changes to the system.
	@param			notifyRefCon 
						A refCon passed back to notifyRefCon
	@param			outClient	
						On successful return, points to the newly-created MIDIClientRef.
	@result			An OSStatus result code.
	
	@discussion
		Note that notifyProc will always be called on the run loop which was current when
		MIDIClientCreate was first called.
	
*/
@available(iOS 4.2, *)
func MIDIClientCreate(name: CFString, _ notifyProc: MIDINotifyProc?, _ notifyRefCon: UnsafeMutablePointer<Void>, _ outClient: UnsafeMutablePointer<MIDIClientRef>) -> OSStatus

/*!
	@function		MIDIClientCreateWithBlock

	@abstract 		Creates a MIDIClient object.

	@param			name
						The client's name.
	@param			outClient	
						On successful return, points to the newly-created MIDIClientRef.
	@param			notifyBlock
						An optional (may be NULL) block via which the client
						will receive notifications of changes to the system.
	@result			An OSStatus result code.
	
	@discussion
		Note that notifyBlock is called on a thread chosen by the implementation.
		Thread-safety is the block's responsibility.
*/
@available(iOS 9.0, *)
func MIDIClientCreateWithBlock(name: CFString, _ outClient: UnsafeMutablePointer<MIDIClientRef>, _ notifyBlock: MIDINotifyBlock?) -> OSStatus

/*!
	@function   	MIDIClientDispose

	@abstract   	Disposes a MIDIClient object.
	
	@param  		client
						The client to dispose.
	@result			An OSStatus result code.

	@discussion
		It is not essential to call this function; the CoreMIDI framework will automatically
		dispose all MIDIClients when an application terminates.
*/
@available(iOS 4.2, *)
func MIDIClientDispose(client: MIDIClientRef) -> OSStatus

/*!
	@function		MIDIInputPortCreate

	@abstract 		Creates an input port through which the client may receive
					incoming MIDI messages from any MIDI source.

	@param			client
						The client to own the newly-created port.
	@param			portName
						The name of the port.
	@param			readProc
						The MIDIReadProc which will be called with incoming MIDI,
						from sources connected to this port.
	@param			refCon
						The refCon passed to readHook.
	@param			outPort
						On successful return, points to the newly-created
						MIDIPort.
	@result			An OSStatus result code.

	@discussion
		After creating a port, use MIDIPortConnectSource to establish an input connection from
		any number of sources to your port.
		
		readProc will be called on a separate high-priority thread owned by CoreMIDI.
*/
@available(iOS 4.2, *)
func MIDIInputPortCreate(client: MIDIClientRef, _ portName: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutablePointer<Void>, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus

/*!
	@function		MIDIInputPortCreateWithBlock

	@abstract 		Creates an input port through which the client may receive
					incoming MIDI messages from any MIDI source.

	@param			client
						The client to own the newly-created port.
	@param			portName
						The name of the port.
	@param			outPort
						On successful return, points to the newly-created
						MIDIPort.
	@param			readBlock
						The MIDIReadBlock which will be called with incoming MIDI, from sources
						connected to this port.
	@result			An OSStatus result code.

	@discussion
		After creating a port, use MIDIPortConnectSource to establish an input connection from
		any number of sources to your port.
		
		readBlock will be called on a separate high-priority thread owned by CoreMIDI.
*/
@available(iOS 9.0, *)
func MIDIInputPortCreateWithBlock(client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>, _ readBlock: MIDIReadBlock) -> OSStatus

/*!
	@function		MIDIOutputPortCreate

	@abstract 		Creates an output port through which the client may send
					outgoing MIDI messages to any MIDI destination.

	@param			client
						The client to own the newly-created port
	@param			portName
						The name of the port.
	@param			outPort
						On successful return, points to the newly-created
						MIDIPort.
	@result			An OSStatus result code.

	@discussion
		Output ports provide a mechanism for MIDI merging.  CoreMIDI assumes that each output
		port will be responsible for sending only a single MIDI stream to each destination,
		although a single port may address all of the destinations in the system.

		Multiple output ports are only necessary when an application is capable of directing
		multiple simultaneous MIDI streams to the same destination.
*/
@available(iOS 4.2, *)
func MIDIOutputPortCreate(client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus

/*!
	@function		MIDIPortDispose

	@abstract 		Disposes a MIDIPort object.

	@param			port
						The port to dispose.
	@result			An OSStatus result code.

	@discussion
		It is not usually necessary to call this function; when an application's MIDIClient's
		are automatically disposed at termination, or explicitly, via MIDIClientDispose, the
		client's ports are automatically disposed at that time.
*/
@available(iOS 4.2, *)
func MIDIPortDispose(port: MIDIPortRef) -> OSStatus

/*!
	@function		MIDIPortConnectSource

	@abstract 		Establishes a connection from a source to a client's input port.

	@param			port
						The port to which to create the connection.  This port's
						readProc is called with incoming MIDI from the source.
	@param			source
						The source from which to create the connection.
	@param			connRefCon	
						This refCon is passed to the port's MIDIReadProc or MIDIReadBlock, as a way to
						identify the source.
	@result			An OSStatus result code.

	@discussion
*/
@available(iOS 4.2, *)
func MIDIPortConnectSource(port: MIDIPortRef, _ source: MIDIEndpointRef, _ connRefCon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		MIDIPortDisconnectSource
	
	@abstract 		Closes a previously-established source-to-input port 
					connection.

	@param			port
						The port whose connection is being closed.
	@param			source
						The source from which to close a connection to the
						specified port.
	@result			An OSStatus result code.

	@discussion
*/
@available(iOS 4.2, *)
func MIDIPortDisconnectSource(port: MIDIPortRef, _ source: MIDIEndpointRef) -> OSStatus

/*!
	@function		MIDIGetNumberOfDevices

	@abstract 		Returns the number of devices in the system.

	@result			The number of devices in the system, or 0 if an error 
					occurred.
*/
@available(iOS 4.2, *)
func MIDIGetNumberOfDevices() -> Int

/*!
	@function		MIDIGetDevice

	@abstract 		Returns one of the devices in the system.

	@param			deviceIndex0
						The index (0...MIDIGetNumberOfDevices()-1) of the device
						to return.
	@result			A reference to a device, or NULL if an error occurred.

	@discussion
		Use this to enumerate the devices in the system.

		To enumerate the entities in the system, you can walk through the devices, then walk
		through the devices' entities.

		Note: If a client iterates through the devices and entities in the system, it will not
		ever visit any virtual sources and destinations created by other clients.  Also, a
		device iteration will return devices which are "offline" (were present in the past but
		are not currently present), while iterations through the system's sources and
		destinations will not include the endpoints of offline devices.

		Thus clients should usually use MIDIGetNumberOfSources, MIDIGetSource,
		MIDIGetNumberOfDestinations and MIDIGetDestination, rather iterating through devices and
		entities to locate endpoints.
*/
@available(iOS 4.2, *)
func MIDIGetDevice(deviceIndex0: Int) -> MIDIDeviceRef

/*!
	@function		MIDIDeviceGetNumberOfEntities

	@abstract 		Returns the number of entities in a given device.
	
	@param			device
						The device being queried.

	@result			The number of entities the device contains, or 0 if an
					error occurred.
*/
@available(iOS 4.2, *)
func MIDIDeviceGetNumberOfEntities(device: MIDIDeviceRef) -> Int

/*!
	@function		MIDIDeviceGetEntity

	@abstract 		Returns one of a given device's entities.
	
	@param			device
						The device being queried.
	@param			entityIndex0
						The index (0...MIDIDeviceGetNumberOfEntities(device)-1)
						of the entity to return

	@result			A reference to an entity, or NULL if an error occurred.
*/
@available(iOS 4.2, *)
func MIDIDeviceGetEntity(device: MIDIDeviceRef, _ entityIndex0: Int) -> MIDIEntityRef

/*!
	@function		MIDIEntityGetNumberOfSources
	
	@abstract 		Returns the number of sources in a given entity.
	
	@param			entity
						The entity being queried

	@result			The number of sources the entity contains, or 0 if an
					error occurred.
*/
@available(iOS 4.2, *)
func MIDIEntityGetNumberOfSources(entity: MIDIEntityRef) -> Int

/*!
	@function		MIDIEntityGetSource

	@abstract 		Returns one of a given entity's sources.
	
	@param			entity
						The entity being queried.
	@param			sourceIndex0
						The index (0...MIDIEntityGetNumberOfSources(entity)-1) of
						the source to return

	@result			A reference to a source, or NULL if an error occurred.
*/
@available(iOS 4.2, *)
func MIDIEntityGetSource(entity: MIDIEntityRef, _ sourceIndex0: Int) -> MIDIEndpointRef

/*!
	@function		MIDIEntityGetNumberOfDestinations

	@abstract 		Returns the number of destinations in a given entity.
	
	@param			entity
						The entity being queried

	@result			The number of destinations the entity contains, or 0
					if an error occurred.
*/
@available(iOS 4.2, *)
func MIDIEntityGetNumberOfDestinations(entity: MIDIEntityRef) -> Int

/*!
	@function		MIDIEntityGetDestination

	@abstract 		Returns one of a given entity's destinations.
	
	@param			entity
						The entity being queried.
	@param			destIndex0
						The index (0...MIDIEntityGetNumberOfDestinations(entity)
						- 1) of the destination to return

	@result			A reference to a destination, or NULL if an error occurred.
*/
@available(iOS 4.2, *)
func MIDIEntityGetDestination(entity: MIDIEntityRef, _ destIndex0: Int) -> MIDIEndpointRef

/*!
	@function		MIDIEntityGetDevice

	@abstract 		Returns an entity's device.
	
	@param			inEntity
						The entity being queried.
	@param			outDevice
						On successful return, the entity's owning device.
*/
@available(iOS 4.2, *)
func MIDIEntityGetDevice(inEntity: MIDIEntityRef, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus

/*!
	@function		MIDIGetNumberOfSources

	@abstract 		Returns the number of sources in the system.

	@result			The number of sources in the system, or 0 if an error
					occurred.
*/
@available(iOS 4.2, *)
func MIDIGetNumberOfSources() -> Int

/*!
	@function		MIDIGetSource

	@abstract 		Returns one of the sources in the system.

	@param			sourceIndex0	
						The index (0...MIDIGetNumberOfSources()-1) of the source
						to return
	@result			A reference to a source, or NULL if an error occurred.
*/
@available(iOS 4.2, *)
func MIDIGetSource(sourceIndex0: Int) -> MIDIEndpointRef

/*!
	@function		MIDIGetNumberOfDestinations

	@abstract 		Returns the number of destinations in the system.

	@result			The number of destinations in the system, or 0 if an error 
					occurred.
*/
@available(iOS 4.2, *)
func MIDIGetNumberOfDestinations() -> Int

/*!
	@function		MIDIGetDestination

	@abstract 		Returns one of the destinations in the system.

	@param			destIndex0	
						The index (0...MIDIGetNumberOfDestinations()-1) of the
						destination to return
	@result			A reference to a destination, or NULL if an error occurred.
*/
@available(iOS 4.2, *)
func MIDIGetDestination(destIndex0: Int) -> MIDIEndpointRef

/*!
	@function		MIDIEndpointGetEntity

	@abstract 		Returns an endpoint's entity.
	
	@param			inEndpoint
						The endpoint being queried.
	@param			outEntity
						On exit, the endpoint's owning entity, or NULL if none.
	
	@discussion
		Virtual sources and destinations don't have entities.
*/
@available(iOS 4.2, *)
func MIDIEndpointGetEntity(inEndpoint: MIDIEndpointRef, _ outEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus

/*!
	@function		MIDIDestinationCreate

	@abstract 		Creates a virtual destination in a client.

	@param			client
						The client owning the virtual destination.
	@param			name
						The name of the virtual destination.
	@param			readProc
						The MIDIReadProc to be called when a client sends MIDI to
						the virtual destination.
	@param			refCon
						The refCon to be passed to the readProc.
	@param			outDest
						On successful return, a pointer to the newly-created
						destination.
	@result			An OSStatus result code.

	@discussion
		The specified readProc gets called when clients send MIDI to your virtual destination.

		Drivers need not call this; when they create devices and entities, sources and
		destinations are created at that time.
		
		After creating a virtual destination, it's a good idea to assign it the same unique ID
		it had the last time your application created it. (Although you should be prepared for
		this to fail in the unlikely event of a collision.) This will permit other clients
		to retain persistent references to your virtual destination more easily.
		
		See the discussion of kMIDIPropertyAdvanceScheduleTimeMuSec for notes about the
		relationship between when a sender sends MIDI to the destination and when it is
		received.
*/
@available(iOS 4.2, *)
func MIDIDestinationCreate(client: MIDIClientRef, _ name: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutablePointer<Void>, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus

/*!
	@function		MIDIDestinationCreateWithBlock

	@abstract 		Creates a virtual destination in a client.

	@param			client
						The client owning the virtual destination.
	@param			name
						The name of the virtual destination.
	@param			outDest
						On successful return, a pointer to the newly-created
						destination.
	@param			readBlock
						The MIDIReadBlock to be called when a client sends MIDI to the virtual
						destination.
	@result			An OSStatus result code.

	@discussion
		The specified readBlock gets called when clients send MIDI to your virtual destination.

		Drivers need not call this; when they create devices and entities, sources and
		destinations are created at that time.
		
		After creating a virtual destination, it's a good idea to assign it the same unique ID
		it had the last time your application created it. (Although you should be prepared for
		this to fail in the unlikely event of a collision.) This will permit other clients
		to retain persistent references to your virtual destination more easily.
		
		See the discussion of kMIDIPropertyAdvanceScheduleTimeMuSec for notes about the
		relationship between when a sender sends MIDI to the destination and when it is
		received.
*/
@available(iOS 9.0, *)
func MIDIDestinationCreateWithBlock(client: MIDIClientRef, _ name: CFString, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>, _ readBlock: MIDIReadBlock) -> OSStatus

/*!
	@function		MIDISourceCreate

	@abstract 		Creates a virtual source in a client.

	@param			client
						The client owning the virtual source.
	@param			name
						The name of the virtual source.
	@param			outSrc
						On successful return, a pointer to the newly-created
						source.
	@result			An OSStatus result code.

	@discussion
		Drivers need not call this; when they create devices and entities, sources and
		destinations are created at that time.

		After creating a virtual source, use MIDIReceived to transmit MIDI messages from your
		virtual source to any clients connected to the virtual source.

		After creating a virtual source, it's a good idea to assign it the same unique ID it had
		the last time your application created it. (Although you should be prepared for this to
		fail in the unlikely event of a collision.) This will permit other clients to retain
		persistent references to your virtual source more easily.
*/
@available(iOS 4.2, *)
func MIDISourceCreate(client: MIDIClientRef, _ name: CFString, _ outSrc: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus

/*!
	@function		MIDIEndpointDispose

	@abstract 		Disposes a virtual source or destination your client created.

	@param			endpt
						The endpoint to be disposed.

	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIEndpointDispose(endpt: MIDIEndpointRef) -> OSStatus

/*!
	@functiongroup	External Devices
*/
/*!
	@function		MIDIGetNumberOfExternalDevices

	@abstract 		Returns the number of external MIDI devices in the system.
					
	@result			The number of external devices in the system, or 0 if an error 
					occurred.

	@discussion
		External MIDI devices are MIDI devices connected to driver endpoints via a standard MIDI
		cable. Their presence is completely optional, only when a UI (such as Audio MIDI Setup)
		adds them.
*/
@available(iOS 4.2, *)
func MIDIGetNumberOfExternalDevices() -> Int

/*!
	@function		MIDIGetExternalDevice

	@abstract 		Returns one of the external devices in the system.

	@param			deviceIndex0
						The index (0...MIDIGetNumberOfDevices()-1) of the device
						to return.
	@result			A reference to a device, or NULL if an error occurred.

	@discussion
		Use this to enumerate the external devices in the system.
*/
@available(iOS 4.2, *)
func MIDIGetExternalDevice(deviceIndex0: Int) -> MIDIDeviceRef

/*!
	@function		MIDIObjectGetIntegerProperty

	@abstract 		Gets an object's integer-type property.
	
	@param			obj
						The object whose property is to be returned.
	@param			propertyID
						Name of the property to return.
	@param			outValue
						On successful return, the value of the property.
	@result			An OSStatus result code.

	@discussion
		(See the MIDIObjectRef documentation for information about properties.)
*/
@available(iOS 4.2, *)
func MIDIObjectGetIntegerProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outValue: UnsafeMutablePointer<Int32>) -> OSStatus

/*!
	@function		MIDIObjectSetIntegerProperty

	@abstract 		Sets an object's integer-type property.
	
	@param			obj
						The object whose property is to be altered.
	@param			propertyID
						Name of the property to set.
	@param			value
						New value of the property.
	@result			An OSStatus result code.

	@discussion
		(See the MIDIObjectRef documentation for information about properties.)
*/
@available(iOS 4.2, *)
func MIDIObjectSetIntegerProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ value: Int32) -> OSStatus

/*!
	@function		MIDIObjectGetStringProperty

	@abstract 		Gets an object's string-type property.

	@param			obj
						The object whose property is to be returned.
	@param			propertyID
						Name of the property to return.
	@param			str
						On successful return, the value of the property.
	@result			An OSStatus result code.

	@discussion
		(See the MIDIObjectRef documentation for information about properties.)
*/
@available(iOS 4.2, *)
func MIDIObjectGetStringProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ str: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus

/*!
	@function		MIDIObjectSetStringProperty

	@abstract 		Sets an object's string-type property.
	
	@param			obj
						The object whose property is to be altered.
	@param			propertyID
						Name of the property to set.
	@param			str
						New value of the property.
	@result			An OSStatus result code.

	@discussion
		(See the MIDIObjectRef documentation for information about properties.)
*/
@available(iOS 4.2, *)
func MIDIObjectSetStringProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ str: CFString) -> OSStatus

/*!
	@function		MIDIObjectGetDataProperty

	@abstract 		Gets an object's data-type property.

	@discussion
(See the MIDIObjectRef documentation for information
					about properties.)
		
	@param			obj
						The object whose property is to be returned.
	@param			propertyID
						Name of the property to return.
	@param			outData
						On successful return, the value of the property.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIObjectGetDataProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus

/*!
	@function		MIDIObjectSetDataProperty

	@abstract 		Sets an object's data-type property.
	
	@param			obj
						The object whose property is to be altered.
	@param			propertyID
						Name of the property to set.
	@param			data
						New value of the property.
	@result			An OSStatus result code.

	@discussion
		(See the MIDIObjectRef documentation for information about properties.)
*/
@available(iOS 4.2, *)
func MIDIObjectSetDataProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ data: CFData) -> OSStatus

/*!
	@function		MIDIObjectGetDictionaryProperty

	@abstract 		Gets an object's dictionary-type property.

	@param			obj
						The object whose property is to be returned.
	@param			propertyID
						Name of the property to return.
	@param			outDict
						On successful return, the value of the property.
	@result			An OSStatus result code.

	@discussion
		(See the MIDIObjectRef documentation for information about properties.)
*/
@available(iOS 4.2, *)
func MIDIObjectGetDictionaryProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus

/*!
	@function		MIDIObjectSetDictionaryProperty

	@abstract 		Sets an object's dictionary-type property.
	
	@param			obj
						The object whose property is to be altered.
	@param			propertyID
						Name of the property to set.
	@param			dict
						New value of the property.
	@result			An OSStatus result code.

	@discussion
		(See the MIDIObjectRef documentation for information about properties.)
*/
@available(iOS 4.2, *)
func MIDIObjectSetDictionaryProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ dict: CFDictionary) -> OSStatus

/*!
	@function		MIDIObjectGetProperties
	
	@abstract		Gets all of an object's properties.

	@param			obj
						The object whose properties are to be returned.
	@param			outProperties
						On successful return, the object's properties.
	@param			deep
						true if the object's child objects are to be included
						(e.g. a device's entities, or an entity's endpoints).
	@result			An OSStatus result code.

	@discussion
		Returns a CFPropertyList of all of an object's properties. The property list may be a
		dictionary or an array. Dictionaries map property names (CFString) to values, which may
		be CFNumber, CFString, or CFData.  Arrays are arrays of such values.

		Properties which an object inherits from its owning object (if any) are not included.
*/
@available(iOS 4.2, *)
func MIDIObjectGetProperties(obj: MIDIObjectRef, _ outProperties: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ deep: Bool) -> OSStatus

/*!
	@function		MIDIObjectRemoveProperty
	
	@abstract		Removes an object's property.

	@param			obj
						The object whose property is to be removed.
	@param			propertyID
						The property to be removed.
	@result			An OSStatus result code.

	@discussion
*/
@available(iOS 4.2, *)
func MIDIObjectRemoveProperty(obj: MIDIObjectRef, _ propertyID: CFString) -> OSStatus

/*!
	@function		MIDIObjectFindByUniqueID

	@abstract 		Locates a device, external device, entity, or endpoint
					by its uniqueID.
	@param			inUniqueID
						The uniqueID of the object to search for.  (This should
						be the result of an earlier call to MIDIObjectGetIntegerProperty
						for the property kMIDIPropertyUniqueID).
	@param			outObject
						The returned object, or 0 if the object was not found or
						an error occurred.  This should be cast to the appropriate
						type (MIDIDeviceRef, MIDIEntityRef, MIDIEndpointRef),
						according to *outObjectType.
	@param			outObjectType
						On exit, the type of object which was found; undefined
						if none found.
	@result			An OSStatus error code, including kMIDIObjectNotFound if there
					is no object with the specified uniqueID.

	@discussion
*/
@available(iOS 4.2, *)
func MIDIObjectFindByUniqueID(inUniqueID: MIDIUniqueID, _ outObject: UnsafeMutablePointer<MIDIObjectRef>, _ outObjectType: UnsafeMutablePointer<MIDIObjectType>) -> OSStatus

/*!
	@function		MIDISend

	@abstract 		Sends MIDI to a destination.

	@param			port
						The output port through which the MIDI is to be sent.
	@param			dest
						The destination to receive the events.
	@param			pktlist
						The MIDI events to be sent.
	@result			An OSStatus result code.

	@discussion
		Events with future timestamps are scheduled for future delivery.  CoreMIDI performs
		any needed MIDI merging.
*/
@available(iOS 4.2, *)
func MIDISend(port: MIDIPortRef, _ dest: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus

/*!
	@function		MIDISendSysex

	@abstract 		Sends a single system-exclusive event, asynchronously.

	@param			request	
						Contains the destination, and a pointer to the MIDI data to be sent.
	@result			An OSStatus result code.

	@discussion
		request->data must point to a single MIDI system-exclusive message, or portion thereof.
*/
@available(iOS 4.2, *)
func MIDISendSysex(request: UnsafeMutablePointer<MIDISysexSendRequest>) -> OSStatus

/*!
	@function		MIDIReceived

	@abstract 		Distributes incoming MIDI from a source to the client input ports
					which are connected to that source.

	@param			src
						The source which is transmitting MIDI.
	@param			pktlist
						The MIDI events to be transmitted.
	@result			An OSStatus result code.

	@discussion
		Drivers should call this function when receiving MIDI from a source.

		Clients which have created virtual sources, using MIDISourceCreate, should call this
		function when the source is generating MIDI.
		
		Unlike MIDISend(), a timestamp of 0 is not equivalent to "now"; the driver or virtual
		source is responsible for putting proper timestamps in the packets.
*/
@available(iOS 4.2, *)
func MIDIReceived(src: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus

/*!
	@function		MIDIFlushOutput
	
	@abstract		Unschedules previously-sent packets.
					
	@param			dest
						All pending events scheduled to be sent to this destination
						are unscheduled.  If NULL, the operation applies to
						all destinations.

	@discussion
		Clients may use MIDIFlushOutput to cancel the sending of packets that were previously
		scheduled for future delivery.
*/
@available(iOS 4.2, *)
func MIDIFlushOutput(dest: MIDIEndpointRef) -> OSStatus

/*!
	@function		MIDIRestart

	@abstract 		Stops and restarts MIDI I/O.
	
	@discussion
		This is useful for forcing CoreMIDI to ask its drivers to rescan for hardware.
	
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIRestart() -> OSStatus

/*!
	@function		MIDIPacketNext

	@abstract 		Advances a MIDIPacket pointer to the MIDIPacket which immediately follows it 
					in memory if it is part of a MIDIPacketList.

	@param			pkt
						A pointer to a MIDIPacket in a MIDIPacketList.

	@result			The subsequent packet in the MIDIPacketList.
*/
func MIDIPacketNext(pkt: UnsafePointer<MIDIPacket>) -> UnsafeMutablePointer<MIDIPacket>

/*!
	@function		MIDIPacketListInit

	@abstract 		Prepares a MIDIPacketList to be built up dynamically.
	
	@param			pktlist
						The packet list to be initialized.

	@result			A pointer to the first MIDIPacket in the packet list.
*/
@available(iOS 4.2, *)
func MIDIPacketListInit(pktlist: UnsafeMutablePointer<MIDIPacketList>) -> UnsafeMutablePointer<MIDIPacket>

/*!
	@function		MIDIPacketListAdd

	@abstract 		Adds a MIDI event to a MIDIPacketList.
	
	@param			pktlist
						The packet list to which the event is to be added.
	@param			listSize
						The size, in bytes, of the packet list.
	@param			curPacket
						A packet pointer returned by a previous call to
						MIDIPacketListInit or MIDIPacketListAdd for this packet
						list.
	@param			time
						The new event's time.
	@param			nData
						The length of the new event, in bytes.
	@param			data
						The new event.  May be a single MIDI event, or a partial
						sys-ex event.  Running status is <b>not</b> permitted.
	@result			Returns null if there was not room in the packet for the
					event; otherwise returns a packet pointer which should be
					passed as curPacket in a subsequent call to this function.

	@discussion
		The maximum size of a packet list is 65536 bytes. Large sysex messages must be sent in
		smaller packet lists.
*/
@available(iOS 4.2, *)
func MIDIPacketListAdd(pktlist: UnsafeMutablePointer<MIDIPacketList>, _ listSize: Int, _ curPacket: UnsafeMutablePointer<MIDIPacket>, _ time: MIDITimeStamp, _ nData: Int, _ data: UnsafePointer<UInt8>) -> UnsafeMutablePointer<MIDIPacket>

/*!
	@typedef		MIDISetupRef
	
	@discussion		Derives from MIDIObjectRef, does not have an owner object.

					This represents the global state of the MIDI system,
					containing lists of the MIDI devices and serial port
					owners.
					
					Generally, only MIDI drivers and specialized configuration
					editors will need to manipulate MIDISetup objects, not the
					average MIDI client application.  As of CoreMIDI 1.1, the
					MIDIServer maintains a single global MIDISetupRef, stored
					persistently in a preference file.
*/
typealias MIDISetupRef = MIDIObjectRef

/*!
	@function		MIDIDeviceAddEntity

	@discussion		Drivers call this function to specify one of the entities that 
					comprise a device.
					
					Non-drivers may call this function as of CoreMIDI 1.1, to
					add entities to external devices.
	
	@param			device
						The device to which an entity is to be added.
	@param			name
						The name of the new entity.
	@param			embedded
						True if this entity is inside the device, false if the
						entity simply consists of external connectors to which
						other devices can be attached.
	@param			numSourceEndpoints
						The number of source endpoints the entity has.
	@param			numDestinationEndpoints
						The number of destination endpoints the entity has.
	@param			newEntity
						On successful return, points to the newly-created entity.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIDeviceAddEntity(device: MIDIDeviceRef, _ name: CFString, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus

/*!
	@function		MIDIDeviceRemoveEntity

	@discussion		Drivers may call this function to remove one of a device's
					entities.
					
					New for CoreMIDI 1.1.
	
	@param			device
						The device from which an entity is to be removed.
	@param			entity
						The entity to be removed.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIDeviceRemoveEntity(device: MIDIDeviceRef, _ entity: MIDIEntityRef) -> OSStatus

/*!
	@function		MIDIEntityAddOrRemoveEndpoints

	@discussion		Drivers and configuration editors may call this function to add to 
					or remove an entity's endpoints.
					
					New for CoreMIDI 1.3.
	
	@param			entity
						The entity whose endpoints are to be manipulated.
	@param			numSourceEndpoints
						The desired new number of source endpoints.
	@param			numDestinationEndpoints
						The desired new number of destination endpoints.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIEntityAddOrRemoveEndpoints(entity: MIDIEntityRef, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int) -> OSStatus

/*!
	@function		MIDISetupAddDevice

	@abstract 		Adds a driver-owner MIDI device to the current MIDISetup
	
	@discussion		Only MIDI drivers may make this call; it is in this header
					file only for consistency with MIDISetupRemoveDevice.
	
					New for CoreMIDI 1.1.
	
	@param			device
						The device to be added.
*/
@available(iOS 4.2, *)
func MIDISetupAddDevice(device: MIDIDeviceRef) -> OSStatus

/*!
	@function		MIDISetupRemoveDevice

	@abstract 		Removes a driver-owned MIDI device from the current MIDISetup
	
	@discussion		Generally this should only be called from a studio configuration
					editor, to remove a device which is offline and which the user
					has specified as being permanently missing.
					
					Instead of removing devices from the setup, drivers should
					set the device's kMIDIPropertyOffline to 1 so that if the
					device reappears later, none of its properties are lost.
	
					New for CoreMIDI 1.1.
	
	@param			device
						The device to be added.
*/
@available(iOS 4.2, *)
func MIDISetupRemoveDevice(device: MIDIDeviceRef) -> OSStatus

/*!
	@function		MIDISetupAddExternalDevice

	@abstract 		Adds an external MIDI device to the current MIDISetup
	
	@discussion		Useful for a studio configuration editor.  New for CoreMIDI 1.1.
	
	@param			device
						The device to be added.
*/
@available(iOS 4.2, *)
func MIDISetupAddExternalDevice(device: MIDIDeviceRef) -> OSStatus

/*!
	@function		MIDISetupRemoveExternalDevice

	@abstract 		Removes an external MIDI device from the current MIDISetup
	
	@discussion		Useful for a studio configuration editor.  New for CoreMIDI 1.1.
	
	@param			device
						The device to be removed.
*/
@available(iOS 4.2, *)
func MIDISetupRemoveExternalDevice(device: MIDIDeviceRef) -> OSStatus

/*!
	@function		MIDIExternalDeviceCreate

	@abstract		Create a new external MIDI device.

	@discussion		Non-drivers may call this function as of CoreMIDI 1.1, to
					create external devices.

					The new device is not added to the current MIDISetupRef;
					to do this, use MIDISetupAddExternalDevice.
	
	@param			name
						The name of the new device.
	@param			manufacturer
						The name of the device's manufacturer.
	@param			model
						The device's model name.
	@param			outDevice
						On successful return, points to the newly-created device.
	@result			An OSStatus result code.
*/
@available(iOS 4.2, *)
func MIDIExternalDeviceCreate(name: CFString, _ manufacturer: CFString, _ model: CFString, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus

/*!
    @typedef        MIDIThruConnectionRef
    
    @discussion     An opaque reference to a play-through connection.
*/
typealias MIDIThruConnectionRef = MIDIObjectRef

/*!
    @struct         MIDIValueMap
    
    @discussion     A custom mapping function to transform MIDI 7-bit values,
                    as contained in note numbers, velocities, control values,
                    etc.  y = value[x], where x is the input MIDI value, y the
                    output.
*/
struct MIDIValueMap {
  var value: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(value: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}

/*!
    @enum           MIDITransformType
    
    @brief          Values specifying a type of MIDI transformation, as found in the transform member of MIDITransform.
    
    @constant   kMIDITransform_None
        no transformation (param unused)
    @constant   kMIDITransform_FilterOut
        filter out the specified event type (param unused)
    @constant   kMIDITransform_MapControl
        transform one control number to another; param is destination control number
    @constant   kMIDITransform_Add
        add param to values
    @constant   kMIDITransform_Scale
        multiple value by the fixed point number in param, which is in fixed point: bbbb.bbbb bbbb bbbb
    @constant   kMIDITransform_MinValue
        the value's minimum value is param
    @constant   kMIDITransform_MaxValue
        the value's maximum value is param
    @constant   kMIDITransform_MapValue
        transform the value using a map; param is the index of the map in the connection's array of maps.
*/
enum MIDITransformType : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case None
  case FilterOut
  case MapControl
  case Add
  case Scale
  case MinValue
  case MaxValue
  case MapValue
}
var kMIDIThruConnection_MaxEndpoints: Int { get }

/*!
    @enum       MIDITransformControlType
    
    @discussion Specifies how control numbers are interpreted.
    @constant   kMIDIControlType_7Bit
        control numbers may be 0-127
    @constant   kMIDIControlType_14Bit
        control numbers may be 0-31
    @constant   kMIDIControlType_7BitRPN
        control numbers may be 0-16383
    @constant   kMIDIControlType_14BitRPN
    @constant   kMIDIControlType_7BitNRPN
    @constant   kMIDIControlType_14BitNRPN
*/
enum MIDITransformControlType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case ControlType_7Bit
  case ControlType_14Bit
  case ControlType_7BitRPN
  case ControlType_14BitRPN
  case ControlType_7BitNRPN
  case ControlType_14BitNRPN
}

/*!
    @struct     MIDITransform
    @abstract   Describes how a single type of MIDI event is transformed.
    @discussion This structure controls the transformation of various MIDI events other than control changes.
    @field      transform   The type of transformation to be applied to the event values.
    @field      param       An argument to the transformation method (see description of MIDITransformType).
*/
struct MIDITransform {
  var transform: MIDITransformType
  var param: Int16
  init()
  init(transform: MIDITransformType, param: Int16)
}

/*!
    @struct     MIDIControlTransform
    @abstract   Describes a transformation of MIDI control change events.

    @field  controlType         The type of control specified by controlNumber
    @field  remappedControlType If transform is kMIDITransform_MapControl, the output control type
    @field  controlNumber       The control number to be affected.
    @field  transform           The type of transformation to be applied to the event values.
    @field  param               An argument to the transformation method (see description of MIDITransformType).

    @discussion
        A single MIDIThruConnectionParams may describe any number of transformations to control
        events. It is important that multiple transformations are ordered correctly: filter out,
        remap, then alter values.
        
        All transformations are done internally using 14-bit values, so for example, when doing
        an add/min/max transform on a 7-bit control value, the parameter must be a 14-bit value.
        For example, to add 10 to a control value, param must be (10 << 7) = 1280.

        As per the MIDI specification, a number of controls are interpreted specially:

        32-63 are the LSBs of 0-31
        6/38 is data entry
        96,97 are data increment, decrement
        98-101 are NRPN/RPN
*/
struct MIDIControlTransform {
  var controlType: MIDITransformControlType
  var remappedControlType: MIDITransformControlType
  var controlNumber: UInt16
  var transform: MIDITransformType
  var param: Int16
  init()
  init(controlType: MIDITransformControlType, remappedControlType: MIDITransformControlType, controlNumber: UInt16, transform: MIDITransformType, param: Int16)
}

/*!
    @struct     MIDIThruConnectionEndpoint
    @abstract   Describes a source or destination in a MIDIThruConnection.
    @field  endpointRef     The endpoint specified as a MIDIEndpointRef.
    @field  uniqueID        The endpoint specified by its uniqueID.
    @discussion
        When creating one of these, you can leave uniqueID 0 if the endpoint exists and you are passing
        its MIDIEndpointRef.
        
        When obtaining one of these from CoreMIDI, endpointRef may be NULL if it doesn't exist, but the
        uniqueID will always be non-zero.
*/
struct MIDIThruConnectionEndpoint {
  var endpointRef: MIDIEndpointRef
  var uniqueID: MIDIUniqueID
  init()
  init(endpointRef: MIDIEndpointRef, uniqueID: MIDIUniqueID)
}

/*!
    @struct     MIDIThruConnectionParams
    @abstract   Describes a set of MIDI routings and transformations.
    @field      version     Version of this structure; must be 0.
    @field      numSources  The number of valid sources in the following array.
    @field      sources     All MIDI generated by these sources is routed into this connection for processing
                            and distribution to destinations.
    @field      numDestinations The number of valid destinations in the following array.
    @field      destinations    All MIDI output from the connection is routed to these destinations.
    @field      channelMap      Maps each of the source 16 MIDI channels to channel 0-15 (1-16) or 0xFF when
                                MIDI from a channel is to be filtered out.
    @field      lowVelocity     Note events with a velocity less than this value are filtered out.
    @field      highVelocity    Note events with a velocity greater than this, if it is not 0, are filtered out.
    @field      lowNote         See highNote.
    @field      highNote        If highNote >= lowNote, then notes outside this range are filtered out.
                                If lowNote > highNote, then notes <i>inside</i> this range are filtered out.
                                This applies to note and polyphonic key pressure events.
                                These fields are ignored if a there is a MIDIValueMap applying to noteNumber.
    @field      noteNumber      Specifies how MIDI note numbers are transformed.
    @field      velocity        Specifies how MIDI note velocities are transformed.
    @field      keyPressure     Specifies how MIDI polyphonic key pressure events are transformed.
    @field      channelPressure Specifies how MIDI monophonic (channel) pressure events are transformed.
    @field      programChange   Specifies how MIDI program change events are transformed.
    @field      pitchBend       Specifies how MIDI pitch bend events are transformed.
    @field      filterOutSysEx  If 1, specifies that system-exclusive messages are to be filtered out.
    @field      filterOutMTC    If 1, specifies that MIDI Time Code messages are to be filtered out.
    @field      filterOutBeatClock  If 1, specifies the MIDI clock, play, stop, and resume messages are to
                                be filtered out.
    @field      filterOutTuneRequest    If 1, specifies that MIDI Tune Request messages are to be filtered out.
    @field      reserved2       Must be 0.
    @field      filterOutAllControls    If 1, specifies that all MIDI continuous control messages are to be filtered out.
    @field      numControlTransforms    The number of control transformations in the variable-length portion of the struct.
    @field      numMaps                 The number of MIDIValueMaps in the variable-length portion of the struct.
    @field      reserved3       Must be 0.
    
    @discussion
        The remainder of the structure is variably-sized. It contains numControlTransform instances of 
        MIDIControlTransform, followed by numMaps instances of MIDIValueMap.
*/
struct MIDIThruConnectionParams {
  var version: UInt32
  var numSources: UInt32
  var sources: (MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint)
  var numDestinations: UInt32
  var destinations: (MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint)
  var channelMap: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var lowVelocity: UInt8
  var highVelocity: UInt8
  var lowNote: UInt8
  var highNote: UInt8
  var noteNumber: MIDITransform
  var velocity: MIDITransform
  var keyPressure: MIDITransform
  var channelPressure: MIDITransform
  var programChange: MIDITransform
  var pitchBend: MIDITransform
  var filterOutSysEx: UInt8
  var filterOutMTC: UInt8
  var filterOutBeatClock: UInt8
  var filterOutTuneRequest: UInt8
  var reserved2: (UInt8, UInt8, UInt8)
  var filterOutAllControls: UInt8
  var numControlTransforms: UInt16
  var numMaps: UInt16
  var reserved3: (UInt16, UInt16, UInt16, UInt16)
  init()
  init(version: UInt32, numSources: UInt32, sources: (MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint), numDestinations: UInt32, destinations: (MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint, MIDIThruConnectionEndpoint), channelMap: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), lowVelocity: UInt8, highVelocity: UInt8, lowNote: UInt8, highNote: UInt8, noteNumber: MIDITransform, velocity: MIDITransform, keyPressure: MIDITransform, channelPressure: MIDITransform, programChange: MIDITransform, pitchBend: MIDITransform, filterOutSysEx: UInt8, filterOutMTC: UInt8, filterOutBeatClock: UInt8, filterOutTuneRequest: UInt8, reserved2: (UInt8, UInt8, UInt8), filterOutAllControls: UInt8, numControlTransforms: UInt16, numMaps: UInt16, reserved3: (UInt16, UInt16, UInt16, UInt16))
}

/*!
    @defined    MIDIThruConnectionParamsSize
    @abstract   Returns the size of a MIDIThruConnectionParams.
    @discussion Accounts for the variable-length elements in the structure and returns its true
                size in bytes.
*/
func MIDIThruConnectionParamsSize(ptr: UnsafePointer<MIDIThruConnectionParams>) -> Int

/*!
    @function   MIDIThruConnectionParamsInitialize
    @abstract   Fills a MIDIThruConnectionParams with default values.
    @param      inConnectionParams  The struct to be initialized.
    @result     An OSStatus result code.
    @discussion
        This convenience function fills the connection structure with default values:
no endpoints, no transformations (mostly zeroes except for the channel map).
Then, just filling in the source and adding one destination will create a simple, 
unmodified thru connection.
*/
@available(iOS 4.2, *)
func MIDIThruConnectionParamsInitialize(inConnectionParams: UnsafeMutablePointer<MIDIThruConnectionParams>)

/*!
    @function   MIDIThruConnectionCreate
    @abstract   Creates a thru connection.
    @param      inPersistentOwnerID
                    If null, then the connection is marked as owned by the client
                    and will be automatically disposed with the client.  if it is non-null, then it
                    should be a unique identifier, e.g. "com.mycompany.MyCoolProgram".
    @param      inConnectionParams
                    A MIDIThruConnectionParams contained in a CFDataRef.
    @param      outConnection
                    On successful return, a reference to the newly-created connection.
    @result     An OSStatus result code.
    @discussion
*/
@available(iOS 4.2, *)
func MIDIThruConnectionCreate(inPersistentOwnerID: CFString?, _ inConnectionParams: CFData, _ outConnection: UnsafeMutablePointer<MIDIThruConnectionRef>) -> OSStatus

/*!
    @function   MIDIThruConnectionDispose
    @abstract   Disposes a thru connection.
    @param      connection
                    The connection to be disposed
    @result     An OSStatus result code.
    @discussion
*/
@available(iOS 4.2, *)
func MIDIThruConnectionDispose(connection: MIDIThruConnectionRef) -> OSStatus

/*!
    @function   MIDIThruConnectionGetParams
    @abstract   Obtains a thru connection's MIDIThruConnectionParams.
    @param      connection
                    The connection to be disposed.
    @param      outConnectionParams
                    On successful return, the connection's MIDIThruConnectionParams in a CFDataRef
    @result     An OSStatus result code.
    @discussion
        The returned CFDataRef contains a MIDIThruConnectionParams structure. The caller is responsible
        for releasing it.
*/
@available(iOS 4.2, *)
func MIDIThruConnectionGetParams(connection: MIDIThruConnectionRef, _ outConnectionParams: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus

/*!
    @function   MIDIThruConnectionSetParams
    @abstract   Alters a thru connection's MIDIThruConnectionParams.
    @param      connection
                    The connection to be modified.
    @param      inConnectionParams
                    The connection's new MIDIThruConnectionParams in a CFDataRef
    @result     An OSStatus result code.
    @discussion
*/
@available(iOS 4.2, *)
func MIDIThruConnectionSetParams(connection: MIDIThruConnectionRef, _ inConnectionParams: CFData) -> OSStatus

/*!
    @function   MIDIThruConnectionFind
    @abstract   Returns all of the persistent thru connections created by a client.
    @param      inPersistentOwnerID
                    The ID of the owner whose connections are to be returned.
    @param      outConnectionList
                    On successful return, a CFDataRef containing an array of MIDIThruConnectionRef's.
    @result     An OSStatus result code.
    @discussion
*/
@available(iOS 4.2, *)
func MIDIThruConnectionFind(inPersistentOwnerID: CFString, _ outConnectionList: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
