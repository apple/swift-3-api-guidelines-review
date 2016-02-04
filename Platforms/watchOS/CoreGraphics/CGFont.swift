
class CGFont {
}
typealias CGFontIndex = UInt16
typealias CGGlyph = CGFontIndex
enum CGFontPostScriptFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Type1
  case Type3
  case Type42
}
let kCGFontIndexMax: CGFontIndex
let kCGFontIndexInvalid: CGFontIndex
let kCGGlyphMax: CGFontIndex
@available(watchOS 2.0, *)
func CGFontGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGFontCreateWithDataProvider(provider: CGDataProvider?) -> CGFont?
@available(watchOS 2.0, *)
func CGFontCreateWithFontName(name: CFString?) -> CGFont?
@available(watchOS 2.0, *)
func CGFontCreateCopyWithVariations(font: CGFont?, _ variations: CFDictionary?) -> CGFont?
@available(watchOS 2.0, *)
func CGFontGetNumberOfGlyphs(font: CGFont?) -> Int
@available(watchOS 2.0, *)
func CGFontGetUnitsPerEm(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontCopyPostScriptName(font: CGFont?) -> CFString?
@available(watchOS 2.0, *)
func CGFontCopyFullName(font: CGFont?) -> CFString?
@available(watchOS 2.0, *)
func CGFontGetAscent(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetDescent(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetLeading(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetCapHeight(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetXHeight(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetFontBBox(font: CGFont?) -> CGRect
@available(watchOS 2.0, *)
func CGFontGetItalicAngle(font: CGFont?) -> CGFloat
@available(watchOS 2.0, *)
func CGFontGetStemV(font: CGFont?) -> CGFloat
@available(watchOS 2.0, *)
func CGFontCopyVariationAxes(font: CGFont?) -> CFArray?
@available(watchOS 2.0, *)
func CGFontCopyVariations(font: CGFont?) -> CFDictionary?
@available(watchOS 2.0, *)
func CGFontGetGlyphAdvances(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ advances: UnsafeMutablePointer<Int32>) -> Bool
@available(watchOS 2.0, *)
func CGFontGetGlyphBBoxes(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ bboxes: UnsafeMutablePointer<CGRect>) -> Bool
@available(watchOS 2.0, *)
func CGFontGetGlyphWithGlyphName(font: CGFont?, _ name: CFString?) -> CGGlyph
@available(watchOS 2.0, *)
func CGFontCopyGlyphNameForGlyph(font: CGFont?, _ glyph: CGGlyph) -> CFString?
@available(watchOS 2.0, *)
func CGFontCanCreatePostScriptSubset(font: CGFont?, _ format: CGFontPostScriptFormat) -> Bool
@available(watchOS 2.0, *)
func CGFontCreatePostScriptSubset(font: CGFont?, _ subsetName: CFString?, _ format: CGFontPostScriptFormat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(watchOS 2.0, *)
func CGFontCreatePostScriptEncoding(font: CGFont?, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(watchOS 2.0, *)
func CGFontCopyTableTags(font: CGFont?) -> CFArray?
@available(watchOS 2.0, *)
func CGFontCopyTableForTag(font: CGFont?, _ tag: UInt32) -> CFData?
@available(watchOS 2.0, *)
let kCGFontVariationAxisName: CFString
@available(watchOS 2.0, *)
let kCGFontVariationAxisMinValue: CFString
@available(watchOS 2.0, *)
let kCGFontVariationAxisMaxValue: CFString
@available(watchOS 2.0, *)
let kCGFontVariationAxisDefaultValue: CFString
enum CGGlypDeprecatedEnum : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(*, deprecated)
  case GlyphMin
  @available(*, deprecated)
  case GlyphMax
}
