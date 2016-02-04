
class CTTypesetter {
}
@available(iOS 3.2, *)
func CTTypesetterGetTypeID() -> CFTypeID
@available(iOS 3.2, *)
let kCTTypesetterOptionForcedEmbeddingLevel: CFString
@available(iOS 3.2, *)
func CTTypesetterCreateWithAttributedString(string: CFAttributedString) -> CTTypesetter
@available(iOS 3.2, *)
func CTTypesetterCreateWithAttributedStringAndOptions(string: CFAttributedString, _ options: CFDictionary?) -> CTTypesetter
@available(iOS 3.2, *)
func CTTypesetterCreateLineWithOffset(typesetter: CTTypesetter, _ stringRange: CFRange, _ offset: Double) -> CTLine
@available(iOS 3.2, *)
func CTTypesetterCreateLine(typesetter: CTTypesetter, _ stringRange: CFRange) -> CTLine
@available(iOS 3.2, *)
func CTTypesetterSuggestLineBreakWithOffset(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(iOS 3.2, *)
func CTTypesetterSuggestLineBreak(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
@available(iOS 3.2, *)
func CTTypesetterSuggestClusterBreakWithOffset(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(iOS 3.2, *)
func CTTypesetterSuggestClusterBreak(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
