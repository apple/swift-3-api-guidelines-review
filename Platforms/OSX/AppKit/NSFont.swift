
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
class NSFont : NSObject, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  /*not inherited*/ init?(name fontName: String, matrix fontMatrix: UnsafePointer<CGFloat>)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, size fontSize: CGFloat)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, textTransform: NSAffineTransform?)
  class func userFont(ofSize fontSize: CGFloat) -> NSFont?
  class func userFixedPitchFont(ofSize fontSize: CGFloat) -> NSFont?
  class func setUserFont(aFont: NSFont?)
  class func setUserFixedPitchFont(aFont: NSFont?)
  class func systemFont(ofSize fontSize: CGFloat) -> NSFont
  class func boldSystemFont(ofSize fontSize: CGFloat) -> NSFont
  class func label(ofSize fontSize: CGFloat) -> NSFont
  class func titleBarFont(ofSize fontSize: CGFloat) -> NSFont
  class func menuFont(ofSize fontSize: CGFloat) -> NSFont
  class func menuBarFont(ofSize fontSize: CGFloat) -> NSFont
  class func messageFont(ofSize fontSize: CGFloat) -> NSFont
  class func paletteFont(ofSize fontSize: CGFloat) -> NSFont
  class func toolTipsFont(ofSize fontSize: CGFloat) -> NSFont
  class func controlContentFont(ofSize fontSize: CGFloat) -> NSFont
  @available(OSX 10.11, *)
  class func systemFont(ofSize fontSize: CGFloat, weight: CGFloat) -> NSFont
  @available(OSX 10.11, *)
  class func monospacedDigitSystemFont(ofSize fontSize: CGFloat, weight: CGFloat) -> NSFont
  class func systemFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func labelSize() -> CGFloat
  class func systemFontSize(for controlSize: NSControlSize) -> CGFloat
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var matrix: UnsafePointer<CGFloat> { get }
  var familyName: String? { get }
  var displayName: String? { get }
  var fontDescriptor: NSFontDescriptor { get }
  @NSCopying var textTransform: NSAffineTransform { get }
  var numberOfGlyphs: Int { get }
  var mostCompatibleStringEncoding: UInt { get }
  func glyph(withName aName: String) -> NSGlyph
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
  var isFixedPitch: Bool { get }
  func boundingRect(forGlyph aGlyph: NSGlyph) -> NSRect
  func advancement(forGlyph ag: NSGlyph) -> NSSize
  func getBoundingRects(bounds: NSRectArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: NSSizeArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: NSSizeArray, forPackedGlyphs packedGlyphs: UnsafePointer<Void>, length: Int)
  func set()
  func setIn(graphicsContext: NSGraphicsContext)
  @NSCopying var printer: NSFont { get }
  @NSCopying var screen: NSFont { get }
  func screenFont(with renderingMode: NSFontRenderingMode) -> NSFont
  var renderingMode: NSFontRenderingMode { get }
  @available(OSX 10.7, *)
  @NSCopying var vertical: NSFont { get }
  @available(OSX 10.7, *)
  var isVertical: Bool { get }
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
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
