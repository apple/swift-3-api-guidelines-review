
enum CFStreamStatus : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case notOpen
  case opening
  case open
  case reading
  case writing
  case atEnd
  case closed
  case error
}
struct CFStreamEventType : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var none: CFStreamEventType { get }
  static var openCompleted: CFStreamEventType { get }
  static var hasBytesAvailable: CFStreamEventType { get }
  static var canAcceptBytes: CFStreamEventType { get }
  static var errorOccurred: CFStreamEventType { get }
  static var endEncountered: CFStreamEventType { get }
}
struct CFStreamClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  var release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version version: CFIndex, info info: UnsafeMutablePointer<Void>, retain retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
class CFReadStream {
}
class CFWriteStream {
}
typealias CFReadStreamClientCallBack = @convention(c) (CFReadStream!, CFStreamEventType, UnsafeMutablePointer<Void>) -> Void
typealias CFWriteStreamClientCallBack = @convention(c) (CFWriteStream!, CFStreamEventType, UnsafeMutablePointer<Void>) -> Void
func CFReadStreamGetTypeID() -> CFTypeID
func CFWriteStreamGetTypeID() -> CFTypeID
let kCFStreamPropertyDataWritten: CFString!
func CFReadStreamCreateWithBytesNoCopy(_ alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFReadStream!
func CFWriteStreamCreateWithBuffer(_ alloc: CFAllocator!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferCapacity: CFIndex) -> CFWriteStream!
func CFWriteStreamCreateWithAllocatedBuffers(_ alloc: CFAllocator!, _ bufferAllocator: CFAllocator!) -> CFWriteStream!
func CFReadStreamCreateWithFile(_ alloc: CFAllocator!, _ fileURL: CFURL!) -> CFReadStream!
func CFWriteStreamCreateWithFile(_ alloc: CFAllocator!, _ fileURL: CFURL!) -> CFWriteStream!
func CFStreamCreateBoundPair(_ alloc: CFAllocator!, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>, _ transferBufferSize: CFIndex)
let kCFStreamPropertyAppendToFile: CFString!
let kCFStreamPropertyFileCurrentOffset: CFString!
let kCFStreamPropertySocketNativeHandle: CFString!
let kCFStreamPropertySocketRemoteHostName: CFString!
let kCFStreamPropertySocketRemotePortNumber: CFString!
func CFStreamCreatePairWithSocket(_ alloc: CFAllocator!, _ sock: CFSocketNativeHandle, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithSocketToHost(_ alloc: CFAllocator!, _ host: CFString!, _ port: UInt32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithPeerSocketSignature(_ alloc: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFReadStreamGetStatus(_ stream: CFReadStream!) -> CFStreamStatus
func CFWriteStreamGetStatus(_ stream: CFWriteStream!) -> CFStreamStatus
@available(watchOS 2.0, *)
func CFReadStreamCopyError(_ stream: CFReadStream!) -> CFError!
@available(watchOS 2.0, *)
func CFWriteStreamCopyError(_ stream: CFWriteStream!) -> CFError!
func CFReadStreamOpen(_ stream: CFReadStream!) -> Bool
func CFWriteStreamOpen(_ stream: CFWriteStream!) -> Bool
func CFReadStreamClose(_ stream: CFReadStream!)
func CFWriteStreamClose(_ stream: CFWriteStream!)
func CFReadStreamHasBytesAvailable(_ stream: CFReadStream!) -> Bool
func CFReadStreamRead(_ stream: CFReadStream!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamGetBuffer(_ stream: CFReadStream!, _ maxBytesToRead: CFIndex, _ numBytesRead: UnsafeMutablePointer<CFIndex>) -> UnsafePointer<UInt8>
func CFWriteStreamCanAcceptBytes(_ stream: CFWriteStream!) -> Bool
func CFWriteStreamWrite(_ stream: CFWriteStream!, _ buffer: UnsafePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamCopyProperty(_ stream: CFReadStream!, _ propertyName: CFString!) -> CFTypeRef!
func CFWriteStreamCopyProperty(_ stream: CFWriteStream!, _ propertyName: CFString!) -> CFTypeRef!
func CFReadStreamSetProperty(_ stream: CFReadStream!, _ propertyName: CFString!, _ propertyValue: CFTypeRef!) -> Bool
func CFWriteStreamSetProperty(_ stream: CFWriteStream!, _ propertyName: CFString!, _ propertyValue: CFTypeRef!) -> Bool
func CFReadStreamSetClient(_ stream: CFReadStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFReadStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Bool
func CFWriteStreamSetClient(_ stream: CFWriteStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFWriteStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Bool
func CFReadStreamScheduleWithRunLoop(_ stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFWriteStreamScheduleWithRunLoop(_ stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFReadStreamUnscheduleFromRunLoop(_ stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFWriteStreamUnscheduleFromRunLoop(_ stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
@available(watchOS 2.0, *)
func CFReadStreamSetDispatchQueue(_ stream: CFReadStream!, _ q: dispatch_queue_t!)
@available(watchOS 2.0, *)
func CFWriteStreamSetDispatchQueue(_ stream: CFWriteStream!, _ q: dispatch_queue_t!)
@available(watchOS 2.0, *)
func CFReadStreamCopyDispatchQueue(_ stream: CFReadStream!) -> dispatch_queue_t!
@available(watchOS 2.0, *)
func CFWriteStreamCopyDispatchQueue(_ stream: CFWriteStream!) -> dispatch_queue_t!
enum CFStreamErrorDomain : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case custom
  case POSIX
  case macOSStatus
}
struct CFStreamError {
  var domain: CFIndex
  var error: Int32
  init()
  init(domain domain: CFIndex, error error: Int32)
}
func CFReadStreamGetError(_ stream: CFReadStream!) -> CFStreamError
func CFWriteStreamGetError(_ stream: CFWriteStream!) -> CFStreamError
