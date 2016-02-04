
typealias CFBagRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFBagReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFBagCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFBagEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
typealias CFBagHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode
struct CFBagCallBacks {
  var version: CFIndex
  var retain: CFBagRetainCallBack!
  var release: CFBagReleaseCallBack!
  var copyDescription: CFBagCopyDescriptionCallBack!
  var equal: CFBagEqualCallBack!
  var hash: CFBagHashCallBack!
  init()
  init(version: CFIndex, retain: CFBagRetainCallBack!, release: CFBagReleaseCallBack!, copyDescription: CFBagCopyDescriptionCallBack!, equal: CFBagEqualCallBack!, hash: CFBagHashCallBack!)
}
let kCFTypeBagCallBacks: CFBagCallBacks
let kCFCopyStringBagCallBacks: CFBagCallBacks
typealias CFBagApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFBag {
}
@available(*, deprecated, renamed="CFBag")
typealias CFBagRef = CFBag
class CFMutableBag {
}
@available(*, deprecated, renamed="CFMutableBag")
typealias CFMutableBagRef = CFMutableBag
func CFBagGetTypeID() -> CFTypeID
func CFBagCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFBagCallBacks>) -> CFBag!
func CFBagCreateCopy(allocator: CFAllocator!, _ theBag: CFBag!) -> CFBag!
func CFBagCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFBagCallBacks>) -> CFMutableBag!
func CFBagCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theBag: CFBag!) -> CFMutableBag!
func CFBagGetCount(theBag: CFBag!) -> CFIndex
func CFBagGetCountOfValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> CFIndex
func CFBagContainsValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> Bool
func CFBagGetValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> UnsafePointer<Void>
func CFBagGetValueIfPresent(theBag: CFBag!, _ candidate: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFBagGetValues(theBag: CFBag!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFBagApplyFunction(theBag: CFBag!, _ applier: CFBagApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFBagAddValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagReplaceValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagSetValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagRemoveValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagRemoveAllValues(theBag: CFMutableBag!)
