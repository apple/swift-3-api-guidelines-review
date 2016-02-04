
class CFMachPort {
}
@available(*, deprecated, renamed="CFMachPort")
typealias CFMachPortRef = CFMachPort
struct CFMachPortContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFMachPortCallBack = @convention(c) (CFMachPort!, UnsafeMutablePointer<Void>, CFIndex, UnsafeMutablePointer<Void>) -> Void
typealias CFMachPortInvalidationCallBack = @convention(c) (CFMachPort!, UnsafeMutablePointer<Void>) -> Void
func CFMachPortGetTypeID() -> CFTypeID
func CFMachPortCreate(allocator: CFAllocator!, _ callout: CFMachPortCallBack!, _ context: UnsafeMutablePointer<CFMachPortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMachPort!
func CFMachPortCreateWithPort(allocator: CFAllocator!, _ portNum: mach_port_t, _ callout: CFMachPortCallBack!, _ context: UnsafeMutablePointer<CFMachPortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMachPort!
func CFMachPortGetPort(port: CFMachPort!) -> mach_port_t
func CFMachPortGetContext(port: CFMachPort!, _ context: UnsafeMutablePointer<CFMachPortContext>)
func CFMachPortInvalidate(port: CFMachPort!)
func CFMachPortIsValid(port: CFMachPort!) -> Bool
func CFMachPortGetInvalidationCallBack(port: CFMachPort!) -> CFMachPortInvalidationCallBack!
func CFMachPortSetInvalidationCallBack(port: CFMachPort!, _ callout: CFMachPortInvalidationCallBack!)
func CFMachPortCreateRunLoopSource(allocator: CFAllocator!, _ port: CFMachPort!, _ order: CFIndex) -> CFRunLoopSource!
