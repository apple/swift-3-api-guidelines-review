
typealias NSGlyph = UInt32
var NSControlGlyph: Int { get }
var NSNullGlyph: Int { get }
var NSFontIdentityMatrix: UnsafePointer<CGFloat>
enum NSMultibyteGlyphPacking : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nativeShortGlyphPacking
}
enum NSFontRenderingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case defaultRenderingMode
  case antialiasedRenderingMode
  case integerAdvancementsRenderingMode
  case antialiasedIntegerAdvancementsRenderingMode
}
class NSFont : Object, Copying, SecureCoding {
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  /*not inherited*/ init?(name fontName: String, matrix fontMatrix: UnsafePointer<CGFloat>)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, size fontSize: CGFloat)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, textTransform: AffineTransform?)
  class func userFontOf(size fontSize: CGFloat) -> NSFont?
  class func userFixedPitchFontOf(size fontSize: CGFloat) -> NSFont?
  class func setUserFont(aFont: NSFont?)
  class func setUserFixedPitchFont(aFont: NSFont?)
  class func systemFontOf(size fontSize: CGFloat) -> NSFont
  class func boldSystemFontOf(size fontSize: CGFloat) -> NSFont
  class func labelOf(size fontSize: CGFloat) -> NSFont
  class func titleBarFontOf(size fontSize: CGFloat) -> NSFont
  class func menuFontOf(size fontSize: CGFloat) -> NSFont
  class func menuBarFontOf(size fontSize: CGFloat) -> NSFont
  class func messageFontOf(size fontSize: CGFloat) -> NSFont
  class func paletteFontOf(size fontSize: CGFloat) -> NSFont
  class func toolTipsFontOf(size fontSize: CGFloat) -> NSFont
  class func controlContentFontOf(size fontSize: CGFloat) -> NSFont
  @available(OSX 10.11, *)
  class func systemFontOf(size fontSize: CGFloat, weight: CGFloat) -> NSFont
  @available(OSX 10.11, *)
  class func monospacedDigitSystemFontOf(size fontSize: CGFloat, weight: CGFloat) -> NSFont
  class func systemFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func labelSize() -> CGFloat
  class func systemFontSizeFor(controlSize: NSControlSize) -> CGFloat
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var matrix: UnsafePointer<CGFloat> { get }
  var familyName: String? { get }
  var displayName: String? { get }
  var fontDescriptor: NSFontDescriptor { get }
  @NSCopying var textTransform: AffineTransform { get }
  var numberOfGlyphs: Int { get }
  var mostCompatibleStringEncoding: UInt { get }
  func glyphWith(name aName: String) -> NSGlyph
  var coveredCharacterSet: CharacterSet { get }
  var boundingRectForFont: Rect { get }
  var maximumAdvancement: Size { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var leading: CGFloat { get }
  var underlinePosition: CGFloat { get }
  var underlineThickness: CGFloat { get }
  var italicAngle: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  var isFixedPitch: Bool { get }
  func boundingRectFor(glyph aGlyph: NSGlyph) -> Rect
  func advancementFor(glyph ag: NSGlyph) -> Size
  func getBoundingRects(bounds: RectArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: SizeArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: SizeArray, forPackedGlyphs packedGlyphs: UnsafePointer<Void>, length: Int)
  func set()
  func setIn(graphicsContext: NSGraphicsContext)
  @NSCopying var printer: NSFont { get }
  @NSCopying var screen: NSFont { get }
  func screenFontWith(renderingMode: NSFontRenderingMode) -> NSFont
  var renderingMode: NSFontRenderingMode { get }
  @available(OSX 10.7, *)
  @NSCopying var vertical: NSFont { get }
  @available(OSX 10.7, *)
  var isVertical: Bool { get }
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
