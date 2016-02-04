
typealias CFSetRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFSetReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFSetCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFSetEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
typealias CFSetHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode
struct CFSetCallBacks {
  var version: CFIndex
  var retain: CFSetRetainCallBack!
  var release: CFSetReleaseCallBack!
  var copyDescription: CFSetCopyDescriptionCallBack!
  var equal: CFSetEqualCallBack!
  var hash: CFSetHashCallBack!
  init()
  init(version: CFIndex, retain: CFSetRetainCallBack!, release: CFSetReleaseCallBack!, copyDescription: CFSetCopyDescriptionCallBack!, equal: CFSetEqualCallBack!, hash: CFSetHashCallBack!)
}
let kCFTypeSetCallBacks: CFSetCallBacks
let kCFCopyStringSetCallBacks: CFSetCallBacks
typealias CFSetApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFSet {
}
class CFMutableSet {
}
func CFSetGetTypeID() -> CFTypeID
func CFSetCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFSetCallBacks>) -> CFSet!
func CFSetCreateCopy(allocator: CFAllocator!, _ theSet: CFSet!) -> CFSet!
func CFSetCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFSetCallBacks>) -> CFMutableSet!
func CFSetCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theSet: CFSet!) -> CFMutableSet!
func CFSetGetCount(theSet: CFSet!) -> CFIndex
func CFSetGetCountOfValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> CFIndex
func CFSetContainsValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> Bool
func CFSetGetValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> UnsafePointer<Void>
func CFSetGetValueIfPresent(theSet: CFSet!, _ candidate: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFSetGetValues(theSet: CFSet!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFSetApplyFunction(theSet: CFSet!, _ applier: CFSetApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFSetAddValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)
func CFSetReplaceValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)
func CFSetSetValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)
func CFSetRemoveValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)
func CFSetRemoveAllValues(theSet: CFMutableSet!)
