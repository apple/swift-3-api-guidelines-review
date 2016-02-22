
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
@available(watchOS 2.0, *)
func CFFileDescriptorGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CFFileDescriptorCreate(_ allocator: CFAllocator!, _ fd: CFFileDescriptorNativeDescriptor, _ closeOnInvalidate: Bool, _ callout: CFFileDescriptorCallBack!, _ context: UnsafePointer<CFFileDescriptorContext>) -> CFFileDescriptor!
@available(watchOS 2.0, *)
func CFFileDescriptorGetNativeDescriptor(_ f: CFFileDescriptor!) -> CFFileDescriptorNativeDescriptor
@available(watchOS 2.0, *)
func CFFileDescriptorGetContext(_ f: CFFileDescriptor!, _ context: UnsafeMutablePointer<CFFileDescriptorContext>)
@available(watchOS 2.0, *)
func CFFileDescriptorEnableCallBacks(_ f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(watchOS 2.0, *)
func CFFileDescriptorDisableCallBacks(_ f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(watchOS 2.0, *)
func CFFileDescriptorInvalidate(_ f: CFFileDescriptor!)
@available(watchOS 2.0, *)
func CFFileDescriptorIsValid(_ f: CFFileDescriptor!) -> Bool
@available(watchOS 2.0, *)
func CFFileDescriptorCreateRunLoopSource(_ allocator: CFAllocator!, _ f: CFFileDescriptor!, _ order: CFIndex) -> CFRunLoopSource!
