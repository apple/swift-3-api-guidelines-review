
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
@available(iOS 2.0, *)
func CGFontGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CGFontCreateWithDataProvider(_ provider: CGDataProvider?) -> CGFont?
@available(iOS 2.0, *)
func CGFontCreateWithFontName(_ name: CFString?) -> CGFont?
@available(iOS 2.0, *)
func CGFontCreateCopyWithVariations(_ font: CGFont?, _ variations: CFDictionary?) -> CGFont?
@available(iOS 2.0, *)
func CGFontGetNumberOfGlyphs(_ font: CGFont?) -> Int
@available(iOS 2.0, *)
func CGFontGetUnitsPerEm(_ font: CGFont?) -> Int32
@available(iOS 2.0, *)
func CGFontCopyPostScriptName(_ font: CGFont?) -> CFString?
@available(iOS 2.0, *)
func CGFontCopyFullName(_ font: CGFont?) -> CFString?
@available(iOS 2.0, *)
func CGFontGetAscent(_ font: CGFont?) -> Int32
@available(iOS 2.0, *)
func CGFontGetDescent(_ font: CGFont?) -> Int32
@available(iOS 2.0, *)
func CGFontGetLeading(_ font: CGFont?) -> Int32
@available(iOS 2.0, *)
func CGFontGetCapHeight(_ font: CGFont?) -> Int32
@available(iOS 2.0, *)
func CGFontGetXHeight(_ font: CGFont?) -> Int32
@available(iOS 2.0, *)
func CGFontGetFontBBox(_ font: CGFont?) -> CGRect
@available(iOS 2.0, *)
func CGFontGetItalicAngle(_ font: CGFont?) -> CGFloat
@available(iOS 2.0, *)
func CGFontGetStemV(_ font: CGFont?) -> CGFloat
@available(iOS 2.0, *)
func CGFontCopyVariationAxes(_ font: CGFont?) -> CFArray?
@available(iOS 2.0, *)
func CGFontCopyVariations(_ font: CGFont?) -> CFDictionary?
@available(iOS 2.0, *)
func CGFontGetGlyphAdvances(_ font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ advances: UnsafeMutablePointer<Int32>) -> Bool
@available(iOS 2.0, *)
func CGFontGetGlyphBBoxes(_ font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ bboxes: UnsafeMutablePointer<CGRect>) -> Bool
@available(iOS 2.0, *)
func CGFontGetGlyphWithGlyphName(_ font: CGFont?, _ name: CFString?) -> CGGlyph
@available(iOS 2.0, *)
func CGFontCopyGlyphNameForGlyph(_ font: CGFont?, _ glyph: CGGlyph) -> CFString?
@available(iOS 2.0, *)
func CGFontCanCreatePostScriptSubset(_ font: CGFont?, _ format: CGFontPostScriptFormat) -> Bool
@available(iOS 2.0, *)
func CGFontCreatePostScriptSubset(_ font: CGFont?, _ subsetName: CFString?, _ format: CGFontPostScriptFormat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(iOS 2.0, *)
func CGFontCreatePostScriptEncoding(_ font: CGFont?, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(iOS 2.0, *)
func CGFontCopyTableTags(_ font: CGFont?) -> CFArray?
@available(iOS 2.0, *)
func CGFontCopyTableForTag(_ font: CGFont?, _ tag: UInt32) -> CFData?
@available(iOS 2.0, *)
let kCGFontVariationAxisName: CFString
@available(iOS 2.0, *)
let kCGFontVariationAxisMinValue: CFString
@available(iOS 2.0, *)
let kCGFontVariationAxisMaxValue: CFString
@available(iOS 2.0, *)
let kCGFontVariationAxisDefaultValue: CFString
enum CGGlypDeprecatedEnum : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  @available(*, deprecated)
  case glyphMin
  @available(*, deprecated)
  case glyphMax
}
