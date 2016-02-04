
class CTFontCollection {
}
@available(*, deprecated, renamed="CTFontCollection")
typealias CTFontCollectionRef = CTFontCollection
@available(*, deprecated, renamed="CTMutableFontCollection")
typealias CTMutableFontCollectionRef = CTMutableFontCollection
class CTMutableFontCollection {
}
@available(tvOS 3.2, *)
func CTFontCollectionGetTypeID() -> CFTypeID
typealias CTFontCollectionSortDescriptorsCallback = @convention(c) (CTFontDescriptor, CTFontDescriptor, UnsafeMutablePointer<Void>) -> CFComparisonResult
@available(tvOS 3.2, *)
let kCTFontCollectionRemoveDuplicatesOption: CFString
@available(tvOS 3.2, *)
func CTFontCollectionCreateFromAvailableFonts(options: CFDictionary?) -> CTFontCollection
@available(tvOS 3.2, *)
func CTFontCollectionCreateWithFontDescriptors(queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(tvOS 3.2, *)
func CTFontCollectionCreateCopyWithFontDescriptors(original: CTFontCollection, _ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(tvOS 3.2, *)
func CTFontCollectionCreateMatchingFontDescriptors(collection: CTFontCollection) -> CFArray?
@available(tvOS 3.2, *)
func CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback(collection: CTFontCollection, _ sortCallback: CTFontCollectionSortDescriptorsCallback?, _ refCon: UnsafeMutablePointer<Void>) -> CFArray?
