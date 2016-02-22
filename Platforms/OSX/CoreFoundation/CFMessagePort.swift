
class CFMessagePort {
}
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
  init(version version: CFIndex, info info: UnsafeMutablePointer<Void>, retain retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFMessagePortCallBack = @convention(c) (CFMessagePort!, Int32, CFData!, UnsafeMutablePointer<Void>) -> Unmanaged<CFData>!
typealias CFMessagePortInvalidationCallBack = @convention(c) (CFMessagePort!, UnsafeMutablePointer<Void>) -> Void
func CFMessagePortGetTypeID() -> CFTypeID
func CFMessagePortCreateLocal(_ allocator: CFAllocator!, _ name: CFString!, _ callout: CFMessagePortCallBack!, _ context: UnsafeMutablePointer<CFMessagePortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMessagePort!
func CFMessagePortCreateRemote(_ allocator: CFAllocator!, _ name: CFString!) -> CFMessagePort!
func CFMessagePortIsRemote(_ ms: CFMessagePort!) -> Bool
func CFMessagePortGetName(_ ms: CFMessagePort!) -> CFString!
func CFMessagePortSetName(_ ms: CFMessagePort!, _ newName: CFString!) -> Bool
func CFMessagePortGetContext(_ ms: CFMessagePort!, _ context: UnsafeMutablePointer<CFMessagePortContext>)
func CFMessagePortInvalidate(_ ms: CFMessagePort!)
func CFMessagePortIsValid(_ ms: CFMessagePort!) -> Bool
func CFMessagePortGetInvalidationCallBack(_ ms: CFMessagePort!) -> CFMessagePortInvalidationCallBack!
func CFMessagePortSetInvalidationCallBack(_ ms: CFMessagePort!, _ callout: CFMessagePortInvalidationCallBack!)
func CFMessagePortSendRequest(_ remote: CFMessagePort!, _ msgid: Int32, _ data: CFData!, _ sendTimeout: CFTimeInterval, _ rcvTimeout: CFTimeInterval, _ replyMode: CFString!, _ returnData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> Int32
func CFMessagePortCreateRunLoopSource(_ allocator: CFAllocator!, _ local: CFMessagePort!, _ order: CFIndex) -> CFRunLoopSource!
@available(OSX 10.6, *)
func CFMessagePortSetDispatchQueue(_ ms: CFMessagePort!, _ queue: dispatch_queue_t!)
