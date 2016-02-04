
typealias CFDictionaryRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFDictionaryReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFDictionaryCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFDictionaryEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
typealias CFDictionaryHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode
struct CFDictionaryKeyCallBacks {
  var version: CFIndex
  var retain: CFDictionaryRetainCallBack!
  var release: CFDictionaryReleaseCallBack!
  var copyDescription: CFDictionaryCopyDescriptionCallBack!
  var equal: CFDictionaryEqualCallBack!
  var hash: CFDictionaryHashCallBack!
  init()
  init(version: CFIndex, retain: CFDictionaryRetainCallBack!, release: CFDictionaryReleaseCallBack!, copyDescription: CFDictionaryCopyDescriptionCallBack!, equal: CFDictionaryEqualCallBack!, hash: CFDictionaryHashCallBack!)
}
let kCFTypeDictionaryKeyCallBacks: CFDictionaryKeyCallBacks
let kCFCopyStringDictionaryKeyCallBacks: CFDictionaryKeyCallBacks
struct CFDictionaryValueCallBacks {
  var version: CFIndex
  var retain: CFDictionaryRetainCallBack!
  var release: CFDictionaryReleaseCallBack!
  var copyDescription: CFDictionaryCopyDescriptionCallBack!
  var equal: CFDictionaryEqualCallBack!
  init()
  init(version: CFIndex, retain: CFDictionaryRetainCallBack!, release: CFDictionaryReleaseCallBack!, copyDescription: CFDictionaryCopyDescriptionCallBack!, equal: CFDictionaryEqualCallBack!)
}
let kCFTypeDictionaryValueCallBacks: CFDictionaryValueCallBacks
typealias CFDictionaryApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
class CFDictionary {
}
@available(*, deprecated, renamed="CFDictionary")
typealias CFDictionaryRef = CFDictionary
class CFMutableDictionary {
}
@available(*, deprecated, renamed="CFMutableDictionary")
typealias CFMutableDictionaryRef = CFMutableDictionary
func CFDictionaryGetTypeID() -> CFTypeID
func CFDictionaryCreate(allocator: CFAllocator!, _ keys: UnsafeMutablePointer<UnsafePointer<Void>>, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ keyCallBacks: UnsafePointer<CFDictionaryKeyCallBacks>, _ valueCallBacks: UnsafePointer<CFDictionaryValueCallBacks>) -> CFDictionary!
func CFDictionaryCreateCopy(allocator: CFAllocator!, _ theDict: CFDictionary!) -> CFDictionary!
func CFDictionaryCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ keyCallBacks: UnsafePointer<CFDictionaryKeyCallBacks>, _ valueCallBacks: UnsafePointer<CFDictionaryValueCallBacks>) -> CFMutableDictionary!
func CFDictionaryCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theDict: CFDictionary!) -> CFMutableDictionary!
func CFDictionaryGetCount(theDict: CFDictionary!) -> CFIndex
func CFDictionaryGetCountOfKey(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> CFIndex
func CFDictionaryGetCountOfValue(theDict: CFDictionary!, _ value: UnsafePointer<Void>) -> CFIndex
func CFDictionaryContainsKey(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> Bool
func CFDictionaryContainsValue(theDict: CFDictionary!, _ value: UnsafePointer<Void>) -> Bool
func CFDictionaryGetValue(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> UnsafePointer<Void>
func CFDictionaryGetValueIfPresent(theDict: CFDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFDictionaryGetKeysAndValues(theDict: CFDictionary!, _ keys: UnsafeMutablePointer<UnsafePointer<Void>>, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFDictionaryApplyFunction(theDict: CFDictionary!, _ applier: CFDictionaryApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFDictionaryAddValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func CFDictionarySetValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func CFDictionaryReplaceValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func CFDictionaryRemoveValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>)
func CFDictionaryRemoveAllValues(theDict: CFMutableDictionary!)
