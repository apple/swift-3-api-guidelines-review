
class CGFont {
}
typealias CGFontIndex = UInt16
typealias CGGlyph = CGFontIndex
enum CGFontPostScriptFormat : Int32 {
  init?(rawValue rawValue: Int32)
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
func CGFontCreateWithDataProvider(_ provider: CGDataProvider?) -> CGFont?
@available(OSX 10.5, *)
func CGFontCreateWithFontName(_ name: CFString?) -> CGFont?
@available(OSX 10.4, *)
func CGFontCreateCopyWithVariations(_ font: CGFont?, _ variations: CFDictionary?) -> CGFont?
@available(OSX 10.0, *)
func CGFontGetNumberOfGlyphs(_ font: CGFont?) -> Int
@available(OSX 10.0, *)
func CGFontGetUnitsPerEm(_ font: CGFont?) -> Int32
@available(OSX 10.4, *)
func CGFontCopyPostScriptName(_ font: CGFont?) -> CFString?
@available(OSX 10.5, *)
func CGFontCopyFullName(_ font: CGFont?) -> CFString?
@available(OSX 10.5, *)
func CGFontGetAscent(_ font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetDescent(_ font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetLeading(_ font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetCapHeight(_ font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetXHeight(_ font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetFontBBox(_ font: CGFont?) -> CGRect
@available(OSX 10.5, *)
func CGFontGetItalicAngle(_ font: CGFont?) -> CGFloat
@available(OSX 10.5, *)
func CGFontGetStemV(_ font: CGFont?) -> CGFloat
@available(OSX 10.4, *)
func CGFontCopyVariationAxes(_ font: CGFont?) -> CFArray?
@available(OSX 10.4, *)
func CGFontCopyVariations(_ font: CGFont?) -> CFDictionary?
@available(OSX 10.0, *)
func CGFontGetGlyphAdvances(_ font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ advances: UnsafeMutablePointer<Int32>) -> Bool
@available(OSX 10.5, *)
func CGFontGetGlyphBBoxes(_ font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ bboxes: UnsafeMutablePointer<CGRect>) -> Bool
@available(OSX 10.5, *)
func CGFontGetGlyphWithGlyphName(_ font: CGFont?, _ name: CFString?) -> CGGlyph
@available(OSX 10.5, *)
func CGFontCopyGlyphNameForGlyph(_ font: CGFont?, _ glyph: CGGlyph) -> CFString?
@available(OSX 10.4, *)
func CGFontCanCreatePostScriptSubset(_ font: CGFont?, _ format: CGFontPostScriptFormat) -> Bool
@available(OSX 10.4, *)
func CGFontCreatePostScriptSubset(_ font: CGFont?, _ subsetName: CFString?, _ format: CGFontPostScriptFormat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(OSX 10.4, *)
func CGFontCreatePostScriptEncoding(_ font: CGFont?, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(OSX 10.5, *)
func CGFontCopyTableTags(_ font: CGFont?) -> CFArray?
@available(OSX 10.5, *)
func CGFontCopyTableForTag(_ font: CGFont?, _ tag: UInt32) -> CFData?
@available(OSX 10.4, *)
let kCGFontVariationAxisName: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisMinValue: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisMaxValue: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisDefaultValue: CFString
enum CGGlypDeprecatedEnum : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  @available(*, deprecated)
  case glyphMin
  @available(*, deprecated)
  case glyphMax
}
