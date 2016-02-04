
typealias NSGlyph = UInt32
var NSControlGlyph: Int { get }
var NSNullGlyph: Int { get }
var NSFontIdentityMatrix: UnsafePointer<CGFloat>
enum NSMultibyteGlyphPacking : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NativeShortGlyphPacking
}
enum NSFontRenderingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultRenderingMode
  case AntialiasedRenderingMode
  case IntegerAdvancementsRenderingMode
  case AntialiasedIntegerAdvancementsRenderingMode
}
class NSFont : NSObject, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  /*not inherited*/ init?(name fontName: String, matrix fontMatrix: UnsafePointer<CGFloat>)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, size fontSize: CGFloat)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, textTransform: NSAffineTransform?)
  class func userFontOfSize(fontSize: CGFloat) -> NSFont?
  class func userFixedPitchFontOfSize(fontSize: CGFloat) -> NSFont?
  class func setUserFont(aFont: NSFont?)
  class func setUserFixedPitchFont(aFont: NSFont?)
  class func systemFontOfSize(fontSize: CGFloat) -> NSFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> NSFont
  class func labelFontOfSize(fontSize: CGFloat) -> NSFont
  class func titleBarFontOfSize(fontSize: CGFloat) -> NSFont
  class func menuFontOfSize(fontSize: CGFloat) -> NSFont
  class func menuBarFontOfSize(fontSize: CGFloat) -> NSFont
  class func messageFontOfSize(fontSize: CGFloat) -> NSFont
  class func paletteFontOfSize(fontSize: CGFloat) -> NSFont
  class func toolTipsFontOfSize(fontSize: CGFloat) -> NSFont
  class func controlContentFontOfSize(fontSize: CGFloat) -> NSFont
  @available(OSX 10.11, *)
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> NSFont
  @available(OSX 10.11, *)
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> NSFont
  class func systemFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func labelFontSize() -> CGFloat
  class func systemFontSizeForControlSize(controlSize: NSControlSize) -> CGFloat
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var matrix: UnsafePointer<CGFloat> { get }
  var familyName: String? { get }
  var displayName: String? { get }
  var fontDescriptor: NSFontDescriptor { get }
  @NSCopying var textTransform: NSAffineTransform { get }
  var numberOfGlyphs: Int { get }
  var mostCompatibleStringEncoding: UInt { get }
  func glyphWithName(aName: String) -> NSGlyph
  var coveredCharacterSet: NSCharacterSet { get }
  var boundingRectForFont: NSRect { get }
  var maximumAdvancement: NSSize { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var leading: CGFloat { get }
  var underlinePosition: CGFloat { get }
  var underlineThickness: CGFloat { get }
  var italicAngle: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  var fixedPitch: Bool { get }
  func boundingRectForGlyph(aGlyph: NSGlyph) -> NSRect
  func advancementForGlyph(ag: NSGlyph) -> NSSize
  func getBoundingRects(bounds: NSRectArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: NSSizeArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: NSSizeArray, forPackedGlyphs packedGlyphs: UnsafePointer<Void>, length: Int)
  func set()
  func setInContext(graphicsContext: NSGraphicsContext)
  @NSCopying var printerFont: NSFont { get }
  @NSCopying var screenFont: NSFont { get }
  func screenFontWithRenderingMode(renderingMode: NSFontRenderingMode) -> NSFont
  var renderingMode: NSFontRenderingMode { get }
  @available(OSX 10.7, *)
  @NSCopying var verticalFont: NSFont { get }
  @available(OSX 10.7, *)
  var vertical: Bool { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __fFlags {
  var _isScreenFont: UInt32
  var _systemFontType: UInt32
  var _reserved1: UInt32
  var _matrixIsIdentity: UInt32
  var _renderingMode: UInt32
  var _inInstanceCache: UInt32
  var _reserved2: UInt32
  init()
  init(_isScreenFont: UInt32, _systemFontType: UInt32, _reserved1: UInt32, _matrixIsIdentity: UInt32, _renderingMode: UInt32, _inInstanceCache: UInt32, _reserved2: UInt32)
}
func NSConvertGlyphsToPackedGlyphs(glBuf: UnsafeMutablePointer<NSGlyph>, _ count: Int, _ packing: NSMultibyteGlyphPacking, _ packedGlyphs: UnsafeMutablePointer<Int8>) -> Int
let NSAntialiasThresholdChangedNotification: String
let NSFontSetChangedNotification: String
