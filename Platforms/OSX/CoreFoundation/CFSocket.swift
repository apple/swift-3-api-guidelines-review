
class CFSocket {
}
enum CFSocketError : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case success
  case error
  case timeout
}
struct CFSocketSignature {
  var protocolFamily: Int32
  var socketType: Int32
  var `protocol`: Int32
  var address: Unmanaged<CFData>!
  init()
  init(protocolFamily protocolFamily: Int32, socketType socketType: Int32, protocol protocol: Int32, address address: Unmanaged<CFData>!)
}
struct CFSocketCallBackType : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var noCallBack: CFSocketCallBackType { get }
  static var readCallBack: CFSocketCallBackType { get }
  static var acceptCallBack: CFSocketCallBackType { get }
  static var dataCallBack: CFSocketCallBackType { get }
  static var connectCallBack: CFSocketCallBackType { get }
  static var writeCallBack: CFSocketCallBackType { get }
}
var kCFSocketAutomaticallyReenableReadCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableAcceptCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableDataCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableWriteCallBack: CFOptionFlags { get }
@available(OSX 10.5, *)
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
  init(version version: CFIndex, info info: UnsafeMutablePointer<Void>, retain retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFSocketNativeHandle = Int32
func CFSocketGetTypeID() -> CFTypeID
func CFSocketCreate(_ allocator: CFAllocator!, _ protocolFamily: Int32, _ socketType: Int32, _ protocol: Int32, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateWithNative(_ allocator: CFAllocator!, _ sock: CFSocketNativeHandle, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateWithSocketSignature(_ allocator: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateConnectedToSocketSignature(_ allocator: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>, _ timeout: CFTimeInterval) -> CFSocket!
func CFSocketSetAddress(_ s: CFSocket!, _ address: CFData!) -> CFSocketError
func CFSocketConnectToAddress(_ s: CFSocket!, _ address: CFData!, _ timeout: CFTimeInterval) -> CFSocketError
func CFSocketInvalidate(_ s: CFSocket!)
func CFSocketIsValid(_ s: CFSocket!) -> Bool
func CFSocketCopyAddress(_ s: CFSocket!) -> CFData!
func CFSocketCopyPeerAddress(_ s: CFSocket!) -> CFData!
func CFSocketGetContext(_ s: CFSocket!, _ context: UnsafeMutablePointer<CFSocketContext>)
func CFSocketGetNative(_ s: CFSocket!) -> CFSocketNativeHandle
func CFSocketCreateRunLoopSource(_ allocator: CFAllocator!, _ s: CFSocket!, _ order: CFIndex) -> CFRunLoopSource!
func CFSocketGetSocketFlags(_ s: CFSocket!) -> CFOptionFlags
func CFSocketSetSocketFlags(_ s: CFSocket!, _ flags: CFOptionFlags)
func CFSocketDisableCallBacks(_ s: CFSocket!, _ callBackTypes: CFOptionFlags)
func CFSocketEnableCallBacks(_ s: CFSocket!, _ callBackTypes: CFOptionFlags)
func CFSocketSendData(_ s: CFSocket!, _ address: CFData!, _ data: CFData!, _ timeout: CFTimeInterval) -> CFSocketError
func CFSocketRegisterValue(_ nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ value: CFPropertyList!) -> CFSocketError
func CFSocketCopyRegisteredValue(_ nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ value: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ nameServerAddress: UnsafeMutablePointer<Unmanaged<CFData>?>) -> CFSocketError
func CFSocketRegisterSocketSignature(_ nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ signature: UnsafePointer<CFSocketSignature>) -> CFSocketError
func CFSocketCopyRegisteredSocketSignature(_ nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ signature: UnsafeMutablePointer<CFSocketSignature>, _ nameServerAddress: UnsafeMutablePointer<Unmanaged<CFData>?>) -> CFSocketError
func CFSocketUnregister(_ nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!) -> CFSocketError
func CFSocketSetDefaultNameRegistryPortNumber(_ port: UInt16)
func CFSocketGetDefaultNameRegistryPortNumber() -> UInt16
let kCFSocketCommandKey: CFString!
let kCFSocketNameKey: CFString!
let kCFSocketValueKey: CFString!
let kCFSocketResultKey: CFString!
let kCFSocketErrorKey: CFString!
let kCFSocketRegisterCommand: CFString!
let kCFSocketRetrieveCommand: CFString!
