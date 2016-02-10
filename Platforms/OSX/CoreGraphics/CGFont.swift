
class CGFont {
}
typealias CGFontIndex = UInt16
typealias CGGlyph = CGFontIndex
enum CGFontPostScriptFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case type1
  case type3
  case type42
}
let kCGFontIndexMax: CGFontIndex
let kCGFontIndexInvalid: CGFontIndex
let kCGGlyphMax: CGFontIndex
@available(OSX 10.2, *)
func CGFontGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CGFontCreateWithDataProvider(provider: CGDataProvider?) -> CGFont?
@available(OSX 10.5, *)
func CGFontCreateWithFontName(name: CFString?) -> CGFont?
@available(OSX 10.4, *)
func CGFontCreateCopyWithVariations(font: CGFont?, _ variations: CFDictionary?) -> CGFont?
@available(OSX 10.0, *)
func CGFontGetNumberOfGlyphs(font: CGFont?) -> Int
@available(OSX 10.0, *)
func CGFontGetUnitsPerEm(font: CGFont?) -> Int32
@available(OSX 10.4, *)
func CGFontCopyPostScriptName(font: CGFont?) -> CFString?
@available(OSX 10.5, *)
func CGFontCopyFullName(font: CGFont?) -> CFString?
@available(OSX 10.5, *)
func CGFontGetAscent(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetDescent(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetLeading(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetCapHeight(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetXHeight(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetFontBBox(font: CGFont?) -> CGRect
@available(OSX 10.5, *)
func CGFontGetItalicAngle(font: CGFont?) -> CGFloat
@available(OSX 10.5, *)
func CGFontGetStemV(font: CGFont?) -> CGFloat
@available(OSX 10.4, *)
func CGFontCopyVariationAxes(font: CGFont?) -> CFArray?
@available(OSX 10.4, *)
func CGFontCopyVariations(font: CGFont?) -> CFDictionary?
@available(OSX 10.0, *)
func CGFontGetGlyphAdvances(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ advances: UnsafeMutablePointer<Int32>) -> Bool
@available(OSX 10.5, *)
func CGFontGetGlyphBBoxes(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ bboxes: UnsafeMutablePointer<CGRect>) -> Bool
@available(OSX 10.5, *)
func CGFontGetGlyphWithGlyphName(font: CGFont?, _ name: CFString?) -> CGGlyph
@available(OSX 10.5, *)
func CGFontCopyGlyphNameForGlyph(font: CGFont?, _ glyph: CGGlyph) -> CFString?
@available(OSX 10.4, *)
func CGFontCanCreatePostScriptSubset(font: CGFont?, _ format: CGFontPostScriptFormat) -> Bool
@available(OSX 10.4, *)
func CGFontCreatePostScriptSubset(font: CGFont?, _ subsetName: CFString?, _ format: CGFontPostScriptFormat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(OSX 10.4, *)
func CGFontCreatePostScriptEncoding(font: CGFont?, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(OSX 10.5, *)
func CGFontCopyTableTags(font: CGFont?) -> CFArray?
@available(OSX 10.5, *)
func CGFontCopyTableForTag(font: CGFont?, _ tag: UInt32) -> CFData?
@available(OSX 10.4, *)
let kCGFontVariationAxisName: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisMinValue: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisMaxValue: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisDefaultValue: CFString
enum CGGlypDeprecatedEnum : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(*, deprecated)
  case glyphMin
  @available(*, deprecated)
  case glyphMax
}
