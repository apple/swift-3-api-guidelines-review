
class CTTypesetter {
}
@available(OSX 10.5, *)
func CTTypesetterGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
let kCTTypesetterOptionForcedEmbeddingLevel: CFString
@available(OSX 10.5, *)
func CTTypesetterCreateWithAttributedString(string: CFAttributedString) -> CTTypesetter
@available(OSX 10.5, *)
func CTTypesetterCreateWithAttributedStringAndOptions(string: CFAttributedString, _ options: CFDictionary?) -> CTTypesetter
@available(OSX 10.6, *)
func CTTypesetterCreateLineWithOffset(typesetter: CTTypesetter, _ stringRange: CFRange, _ offset: Double) -> CTLine
@available(OSX 10.5, *)
func CTTypesetterCreateLine(typesetter: CTTypesetter, _ stringRange: CFRange) -> CTLine
@available(OSX 10.6, *)
func CTTypesetterSuggestLineBreakWithOffset(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(OSX 10.5, *)
func CTTypesetterSuggestLineBreak(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
@available(OSX 10.6, *)
func CTTypesetterSuggestClusterBreakWithOffset(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex
@available(OSX 10.5, *)
func CTTypesetterSuggestClusterBreak(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
