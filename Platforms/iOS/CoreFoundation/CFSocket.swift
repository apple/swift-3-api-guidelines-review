
class CFSocket {
}
@available(*, deprecated, renamed="CFSocket")
typealias CFSocketRef = CFSocket
enum CFSocketError : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Success
  case Error
  case Timeout
}
struct CFSocketSignature {
  var protocolFamily: Int32
  var socketType: Int32
  var `protocol`: Int32
  var address: Unmanaged<CFData>!
  init()
  init(protocolFamily: Int32, socketType: Int32, protocol: Int32, address: Unmanaged<CFData>!)
}
struct CFSocketCallBackType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var NoCallBack: CFSocketCallBackType { get }
  static var ReadCallBack: CFSocketCallBackType { get }
  static var AcceptCallBack: CFSocketCallBackType { get }
  static var DataCallBack: CFSocketCallBackType { get }
  static var ConnectCallBack: CFSocketCallBackType { get }
  static var WriteCallBack: CFSocketCallBackType { get }
}
var kCFSocketAutomaticallyReenableReadCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableAcceptCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableDataCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableWriteCallBack: CFOptionFlags { get }
@available(iOS 2.0, *)
var kCFSocketLeaveErrors: CFOptionFlags { get }
var kCFSocketCloseOnInvalidate: CFOptionFlags { get }
typealias CFSocketCallBack = @convention(c) (CFSocket!, CFSocketCallBackType, CFData!, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
struct CFSocketContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFSocketNativeHandle = Int32
func CFSocketGetTypeID() -> CFTypeID
func CFSocketCreate(allocator: CFAllocator!, _ protocolFamily: Int32, _ socketType: Int32, _ protocol: Int32, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateWithNative(allocator: CFAllocator!, _ sock: CFSocketNativeHandle, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateWithSocketSignature(allocator: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateConnectedToSocketSignature(allocator: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>, _ timeout: CFTimeInterval) -> CFSocket!
func CFSocketSetAddress(s: CFSocket!, _ address: CFData!) -> CFSocketError
func CFSocketConnectToAddress(s: CFSocket!, _ address: CFData!, _ timeout: CFTimeInterval) -> CFSocketError
func CFSocketInvalidate(s: CFSocket!)
func CFSocketIsValid(s: CFSocket!) -> Bool
func CFSocketCopyAddress(s: CFSocket!) -> CFData!
func CFSocketCopyPeerAddress(s: CFSocket!) -> CFData!
func CFSocketGetContext(s: CFSocket!, _ context: UnsafeMutablePointer<CFSocketContext>)
func CFSocketGetNative(s: CFSocket!) -> CFSocketNativeHandle
func CFSocketCreateRunLoopSource(allocator: CFAllocator!, _ s: CFSocket!, _ order: CFIndex) -> CFRunLoopSource!
func CFSocketGetSocketFlags(s: CFSocket!) -> CFOptionFlags
func CFSocketSetSocketFlags(s: CFSocket!, _ flags: CFOptionFlags)
func CFSocketDisableCallBacks(s: CFSocket!, _ callBackTypes: CFOptionFlags)
func CFSocketEnableCallBacks(s: CFSocket!, _ callBackTypes: CFOptionFlags)
func CFSocketSendData(s: CFSocket!, _ address: CFData!, _ data: CFData!, _ timeout: CFTimeInterval) -> CFSocketError
func CFSocketRegisterValue(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ value: CFPropertyList!) -> CFSocketError
func CFSocketCopyRegisteredValue(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ value: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ nameServerAddress: UnsafeMutablePointer<Unmanaged<CFData>?>) -> CFSocketError
func CFSocketRegisterSocketSignature(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ signature: UnsafePointer<CFSocketSignature>) -> CFSocketError
func CFSocketCopyRegisteredSocketSignature(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ signature: UnsafeMutablePointer<CFSocketSignature>, _ nameServerAddress: UnsafeMutablePointer<Unmanaged<CFData>?>) -> CFSocketError
func CFSocketUnregister(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!) -> CFSocketError
func CFSocketSetDefaultNameRegistryPortNumber(port: UInt16)
func CFSocketGetDefaultNameRegistryPortNumber() -> UInt16
let kCFSocketCommandKey: CFString!
let kCFSocketNameKey: CFString!
let kCFSocketValueKey: CFString!
let kCFSocketResultKey: CFString!
let kCFSocketErrorKey: CFString!
let kCFSocketRegisterCommand: CFString!
let kCFSocketRetrieveCommand: CFString!
