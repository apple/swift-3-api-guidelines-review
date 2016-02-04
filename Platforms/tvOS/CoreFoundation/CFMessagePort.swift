
class CFMessagePort {
}
@available(*, deprecated, renamed="CFMessagePort")
typealias CFMessagePortRef = CFMessagePort
var kCFMessagePortSuccess: Int32 { get }
var kCFMessagePortSendTimeout: Int32 { get }
var kCFMessagePortReceiveTimeout: Int32 { get }
var kCFMessagePortIsInvalid: Int32 { get }
var kCFMessagePortTransportError: Int32 { get }
var kCFMessagePortBecameInvalidError: Int32 { get }
struct CFMessagePortContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFMessagePortCallBack = @convention(c) (CFMessagePort!, Int32, CFData!, UnsafeMutablePointer<Void>) -> Unmanaged<CFData>!
typealias CFMessagePortInvalidationCallBack = @convention(c) (CFMessagePort!, UnsafeMutablePointer<Void>) -> Void
func CFMessagePortGetTypeID() -> CFTypeID
func CFMessagePortCreateLocal(allocator: CFAllocator!, _ name: CFString!, _ callout: CFMessagePortCallBack!, _ context: UnsafeMutablePointer<CFMessagePortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMessagePort!
func CFMessagePortCreateRemote(allocator: CFAllocator!, _ name: CFString!) -> CFMessagePort!
func CFMessagePortIsRemote(ms: CFMessagePort!) -> Bool
func CFMessagePortGetName(ms: CFMessagePort!) -> CFString!
func CFMessagePortSetName(ms: CFMessagePort!, _ newName: CFString!) -> Bool
func CFMessagePortGetContext(ms: CFMessagePort!, _ context: UnsafeMutablePointer<CFMessagePortContext>)
func CFMessagePortInvalidate(ms: CFMessagePort!)
func CFMessagePortIsValid(ms: CFMessagePort!) -> Bool
func CFMessagePortGetInvalidationCallBack(ms: CFMessagePort!) -> CFMessagePortInvalidationCallBack!
func CFMessagePortSetInvalidationCallBack(ms: CFMessagePort!, _ callout: CFMessagePortInvalidationCallBack!)
func CFMessagePortSendRequest(remote: CFMessagePort!, _ msgid: Int32, _ data: CFData!, _ sendTimeout: CFTimeInterval, _ rcvTimeout: CFTimeInterval, _ replyMode: CFString!, _ returnData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> Int32
func CFMessagePortCreateRunLoopSource(allocator: CFAllocator!, _ local: CFMessagePort!, _ order: CFIndex) -> CFRunLoopSource!
@available(tvOS 4.0, *)
func CFMessagePortSetDispatchQueue(ms: CFMessagePort!, _ queue: dispatch_queue_t!)
