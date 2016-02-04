
struct CFBinaryHeapCompareContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
struct CFBinaryHeapCallBacks {
  var version: CFIndex
  var retain: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var compare: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult)!
  init()
  init(version: CFIndex, retain: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, compare: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult)!)
}
let kCFStringBinaryHeapCallBacks: CFBinaryHeapCallBacks
typealias CFBinaryHeapApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFBinaryHeap {
}
func CFBinaryHeapGetTypeID() -> CFTypeID
func CFBinaryHeapCreate(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFBinaryHeapCallBacks>, _ compareContext: UnsafePointer<CFBinaryHeapCompareContext>) -> CFBinaryHeap!
func CFBinaryHeapCreateCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ heap: CFBinaryHeap!) -> CFBinaryHeap!
func CFBinaryHeapGetCount(heap: CFBinaryHeap!) -> CFIndex
func CFBinaryHeapGetCountOfValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>) -> CFIndex
func CFBinaryHeapContainsValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>) -> Bool
func CFBinaryHeapGetMinimum(heap: CFBinaryHeap!) -> UnsafePointer<Void>
func CFBinaryHeapGetMinimumIfPresent(heap: CFBinaryHeap!, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFBinaryHeapGetValues(heap: CFBinaryHeap!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFBinaryHeapApplyFunction(heap: CFBinaryHeap!, _ applier: CFBinaryHeapApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFBinaryHeapAddValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>)
func CFBinaryHeapRemoveMinimumValue(heap: CFBinaryHeap!)
func CFBinaryHeapRemoveAllValues(heap: CFBinaryHeap!)
