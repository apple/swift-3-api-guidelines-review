
typealias CFArrayRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFArrayReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFArrayCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFArrayEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
struct CFArrayCallBacks {
  var version: CFIndex
  var retain: CFArrayRetainCallBack!
  var release: CFArrayReleaseCallBack!
  var copyDescription: CFArrayCopyDescriptionCallBack!
  var equal: CFArrayEqualCallBack!
  init()
  init(version: CFIndex, retain: CFArrayRetainCallBack!, release: CFArrayReleaseCallBack!, copyDescription: CFArrayCopyDescriptionCallBack!, equal: CFArrayEqualCallBack!)
}
let kCFTypeArrayCallBacks: CFArrayCallBacks
typealias CFArrayApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFArray {
}
@available(*, deprecated, renamed="CFArray")
typealias CFArrayRef = CFArray
class CFMutableArray {
}
@available(*, deprecated, renamed="CFMutableArray")
typealias CFMutableArrayRef = CFMutableArray
func CFArrayGetTypeID() -> CFTypeID
func CFArrayCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFArrayCallBacks>) -> CFArray!
func CFArrayCreateCopy(allocator: CFAllocator!, _ theArray: CFArray!) -> CFArray!
func CFArrayCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFArrayCallBacks>) -> CFMutableArray!
func CFArrayCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theArray: CFArray!) -> CFMutableArray!
func CFArrayGetCount(theArray: CFArray!) -> CFIndex
func CFArrayGetCountOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex
func CFArrayContainsValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> Bool
func CFArrayGetValueAtIndex(theArray: CFArray!, _ idx: CFIndex) -> UnsafePointer<Void>
func CFArrayGetValues(theArray: CFArray!, _ range: CFRange, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFArrayApplyFunction(theArray: CFArray!, _ range: CFRange, _ applier: CFArrayApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFArrayGetFirstIndexOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex
func CFArrayGetLastIndexOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex
func CFArrayBSearchValues(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>) -> CFIndex
func CFArrayAppendValue(theArray: CFMutableArray!, _ value: UnsafePointer<Void>)
func CFArrayInsertValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex, _ value: UnsafePointer<Void>)
func CFArraySetValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex, _ value: UnsafePointer<Void>)
func CFArrayRemoveValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex)
func CFArrayRemoveAllValues(theArray: CFMutableArray!)
func CFArrayReplaceValues(theArray: CFMutableArray!, _ range: CFRange, _ newValues: UnsafeMutablePointer<UnsafePointer<Void>>, _ newCount: CFIndex)
func CFArrayExchangeValuesAtIndices(theArray: CFMutableArray!, _ idx1: CFIndex, _ idx2: CFIndex)
func CFArraySortValues(theArray: CFMutableArray!, _ range: CFRange, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>)
func CFArrayAppendArray(theArray: CFMutableArray!, _ otherArray: CFArray!, _ otherRange: CFRange)
