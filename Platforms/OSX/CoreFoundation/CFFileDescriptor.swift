
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
  init(version version: CFIndex, info info: UnsafeMutablePointer<Void>, retain retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
@available(OSX 10.5, *)
func CFFileDescriptorGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CFFileDescriptorCreate(_ allocator: CFAllocator!, _ fd: CFFileDescriptorNativeDescriptor, _ closeOnInvalidate: Bool, _ callout: CFFileDescriptorCallBack!, _ context: UnsafePointer<CFFileDescriptorContext>) -> CFFileDescriptor!
@available(OSX 10.5, *)
func CFFileDescriptorGetNativeDescriptor(_ f: CFFileDescriptor!) -> CFFileDescriptorNativeDescriptor
@available(OSX 10.5, *)
func CFFileDescriptorGetContext(_ f: CFFileDescriptor!, _ context: UnsafeMutablePointer<CFFileDescriptorContext>)
@available(OSX 10.5, *)
func CFFileDescriptorEnableCallBacks(_ f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(OSX 10.5, *)
func CFFileDescriptorDisableCallBacks(_ f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(OSX 10.5, *)
func CFFileDescriptorInvalidate(_ f: CFFileDescriptor!)
@available(OSX 10.5, *)
func CFFileDescriptorIsValid(_ f: CFFileDescriptor!) -> Bool
@available(OSX 10.5, *)
func CFFileDescriptorCreateRunLoopSource(_ allocator: CFAllocator!, _ f: CFFileDescriptor!, _ order: CFIndex) -> CFRunLoopSource!
