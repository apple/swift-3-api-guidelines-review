
class CTFontCollection {
}
class CTMutableFontCollection {
}
@available(OSX 10.5, *)
func CTFontCollectionGetTypeID() -> CFTypeID
typealias CTFontCollectionSortDescriptorsCallback = @convention(c) (CTFontDescriptor, CTFontDescriptor, UnsafeMutablePointer<Void>) -> CFComparisonResult
@available(OSX 10.5, *)
let kCTFontCollectionRemoveDuplicatesOption: CFString
@available(OSX 10.7, *)
let kCTFontCollectionIncludeDisabledFontsOption: CFString
@available(OSX 10.7, *)
let kCTFontCollectionDisallowAutoActivationOption: CFString
@available(OSX 10.5, *)
func CTFontCollectionCreateFromAvailableFonts(options: CFDictionary?) -> CTFontCollection
@available(OSX 10.5, *)
func CTFontCollectionCreateWithFontDescriptors(queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(OSX 10.5, *)
func CTFontCollectionCreateCopyWithFontDescriptors(original: CTFontCollection, _ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection
@available(OSX 10.7, *)
func CTFontCollectionCreateMutableCopy(original: CTFontCollection) -> CTMutableFontCollection
@available(OSX 10.7, *)
func CTFontCollectionCopyQueryDescriptors(collection: CTFontCollection) -> CFArray?
@available(OSX 10.7, *)
func CTFontCollectionSetQueryDescriptors(collection: CTMutableFontCollection, _ descriptors: CFArray?)
@available(OSX 10.7, *)
func CTFontCollectionCopyExclusionDescriptors(collection: CTFontCollection) -> CFArray?
@available(OSX 10.7, *)
func CTFontCollectionSetExclusionDescriptors(collection: CTMutableFontCollection, _ descriptors: CFArray?)
@available(OSX 10.5, *)
func CTFontCollectionCreateMatchingFontDescriptors(collection: CTFontCollection) -> CFArray?
@available(OSX 10.5, *)
func CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback(collection: CTFontCollection, _ sortCallback: CTFontCollectionSortDescriptorsCallback?, _ refCon: UnsafeMutablePointer<Void>) -> CFArray?
@available(OSX 10.7, *)
func CTFontCollectionCreateMatchingFontDescriptorsWithOptions(collection: CTFontCollection, _ options: CFDictionary?) -> CFArray?
@available(OSX 10.7, *)
func CTFontCollectionCreateMatchingFontDescriptorsForFamily(collection: CTFontCollection, _ familyName: CFString, _ options: CFDictionary?) -> CFArray?
@available(OSX 10.7, *)
struct CTFontCollectionCopyOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var DefaultOptions: CTFontCollectionCopyOptions { get }
  static var Unique: CTFontCollectionCopyOptions { get }
  static var StandardSort: CTFontCollectionCopyOptions { get }
}
@available(OSX 10.7, *)
func CTFontCollectionCopyFontAttribute(collection: CTFontCollection, _ attributeName: CFString, _ options: CTFontCollectionCopyOptions) -> CFArray
@available(OSX 10.7, *)
func CTFontCollectionCopyFontAttributes(collection: CTFontCollection, _ attributeNames: CFSet, _ options: CTFontCollectionCopyOptions) -> CFArray
