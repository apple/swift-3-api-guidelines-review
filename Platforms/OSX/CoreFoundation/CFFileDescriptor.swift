
typealias CFFileDescriptorNativeDescriptor = Int32
class CFFileDescriptor {
}
var kCFFileDescriptorReadCallBack: CFOptionFlags { get }
var kCFFileDescriptorWriteCallBack: CFOptionFlags { get }
typealias CFFileDescriptorCallBack = @convention(c) (CFFileDescriptor!, CFOptionFlags, UnsafeMutablePointer<Void>) -> Void
struct CFFileDescriptorContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  var release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
@available(OSX 10.5, *)
func CFFileDescriptorGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CFFileDescriptorCreate(allocator: CFAllocator!, _ fd: CFFileDescriptorNativeDescriptor, _ closeOnInvalidate: Bool, _ callout: CFFileDescriptorCallBack!, _ context: UnsafePointer<CFFileDescriptorContext>) -> CFFileDescriptor!
@available(OSX 10.5, *)
func CFFileDescriptorGetNativeDescriptor(f: CFFileDescriptor!) -> CFFileDescriptorNativeDescriptor
@available(OSX 10.5, *)
func CFFileDescriptorGetContext(f: CFFileDescriptor!, _ context: UnsafeMutablePointer<CFFileDescriptorContext>)
@available(OSX 10.5, *)
func CFFileDescriptorEnableCallBacks(f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(OSX 10.5, *)
func CFFileDescriptorDisableCallBacks(f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(OSX 10.5, *)
func CFFileDescriptorInvalidate(f: CFFileDescriptor!)
@available(OSX 10.5, *)
func CFFileDescriptorIsValid(f: CFFileDescriptor!) -> Bool
@available(OSX 10.5, *)
func CFFileDescriptorCreateRunLoopSource(allocator: CFAllocator!, _ f: CFFileDescriptor!, _ order: CFIndex) -> CFRunLoopSource!
