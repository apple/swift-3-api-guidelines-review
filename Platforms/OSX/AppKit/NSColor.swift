
var NSAppKitVersionNumberWithPatternColorLeakFix: Double { get }
class NSColor : NSObject, NSCopying, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
  init?(coder coder: NSCoder)
  /*not inherited*/ init(calibratedWhite white: CGFloat, alpha alpha: CGFloat)
  /*not inherited*/ init(calibratedHue hue: CGFloat, saturation saturation: CGFloat, brightness brightness: CGFloat, alpha alpha: CGFloat)
  /*not inherited*/ init(calibratedRed red: CGFloat, green green: CGFloat, blue blue: CGFloat, alpha alpha: CGFloat)
  /*not inherited*/ init(deviceWhite white: CGFloat, alpha alpha: CGFloat)
  /*not inherited*/ init(deviceHue hue: CGFloat, saturation saturation: CGFloat, brightness brightness: CGFloat, alpha alpha: CGFloat)
  /*not inherited*/ init(deviceRed red: CGFloat, green green: CGFloat, blue blue: CGFloat, alpha alpha: CGFloat)
  /*not inherited*/ init(deviceCyan cyan: CGFloat, magenta magenta: CGFloat, yellow yellow: CGFloat, black black: CGFloat, alpha alpha: CGFloat)
  /*not inherited*/ init?(catalogName listName: String, colorName colorName: String)
  /*not inherited*/ init(colorSpace space: NSColorSpace, components components: UnsafePointer<CGFloat>, count numberOfComponents: Int)
  @available(OSX 10.7, *)
  /*not inherited*/ init(genericGamma22White white: CGFloat, alpha alpha: CGFloat)
  @available(OSX 10.7, *)
  /*not inherited*/ init(srgbRed red: CGFloat, green green: CGFloat, blue blue: CGFloat, alpha alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(white white: CGFloat, alpha alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(red red: CGFloat, green green: CGFloat, blue blue: CGFloat, alpha alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(hue hue: CGFloat, saturation saturation: CGFloat, brightness brightness: CGFloat, alpha alpha: CGFloat)
  class func black() -> NSColor
  class func darkGray() -> NSColor
  class func lightGray() -> NSColor
  class func white() -> NSColor
  class func gray() -> NSColor
  class func red() -> NSColor
  class func green() -> NSColor
  class func blue() -> NSColor
  class func cyan() -> NSColor
  class func yellow() -> NSColor
  class func magenta() -> NSColor
  class func orange() -> NSColor
  class func purple() -> NSColor
  class func brown() -> NSColor
  class func clear() -> NSColor
  class func controlShadow() -> NSColor
  class func controlDarkShadow() -> NSColor
  class func control() -> NSColor
  class func controlHighlight() -> NSColor
  class func controlLightHighlight() -> NSColor
  class func controlText() -> NSColor
  class func controlBackground() -> NSColor
  class func selectedControl() -> NSColor
  class func secondarySelectedControl() -> NSColor
  class func selectedControlText() -> NSColor
  class func disabledControlText() -> NSColor
  class func text() -> NSColor
  class func textBackground() -> NSColor
  class func selectedText() -> NSColor
  class func selectedTextBackground() -> NSColor
  class func grid() -> NSColor
  class func keyboardFocusIndicator() -> NSColor
  class func windowBackground() -> NSColor
  @available(OSX 10.8, *)
  class func underPageBackground() -> NSColor
  @available(OSX 10.10, *)
  class func label() -> NSColor
  @available(OSX 10.10, *)
  class func secondaryLabel() -> NSColor
  @available(OSX 10.10, *)
  class func tertiaryLabel() -> NSColor
  @available(OSX 10.10, *)
  class func quaternaryLabel() -> NSColor
  class func scrollBar() -> NSColor
  class func knob() -> NSColor
  class func selectedKnob() -> NSColor
  class func windowFrame() -> NSColor
  class func windowFrameText() -> NSColor
  class func selectedMenuItem() -> NSColor
  class func selectedMenuItemText() -> NSColor
  class func highlight() -> NSColor
  class func shadow() -> NSColor
  class func header() -> NSColor
  class func headerText() -> NSColor
  class func alternateSelectedControl() -> NSColor
  class func alternateSelectedControlText() -> NSColor
  class func controlAlternatingRowBackgroundColors() -> [NSColor]
  func highlight(withLevel val: CGFloat) -> NSColor?
  func shadow(withLevel val: CGFloat) -> NSColor?
  /*not inherited*/ init(for controlTint: NSControlTint)
  class func currentControlTint() -> NSControlTint
  func set()
  func setFill()
  func setStroke()
  var colorSpaceName: String { get }
  func usingColorSpaceName(_ colorSpace: String) -> NSColor?
  func usingColorSpaceName(_ colorSpace: String?, device deviceDescription: [String : AnyObject]?) -> NSColor?
  func usingColorSpace(_ space: NSColorSpace) -> NSColor?
  func blendedColor(withFraction fraction: CGFloat, of color: NSColor) -> NSColor?
  func withAlphaComponent(_ alpha: CGFloat) -> NSColor
  var catalogNameComponent: String { get }
  var colorNameComponent: String { get }
  var localizedCatalogNameComponent: String { get }
  var localizedColorNameComponent: String { get }
  var redComponent: CGFloat { get }
  var greenComponent: CGFloat { get }
  var blueComponent: CGFloat { get }
  func getRed(_ red: UnsafeMutablePointer<CGFloat>, green green: UnsafeMutablePointer<CGFloat>, blue blue: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>)
  var hueComponent: CGFloat { get }
  var saturationComponent: CGFloat { get }
  var brightnessComponent: CGFloat { get }
  func getHue(_ hue: UnsafeMutablePointer<CGFloat>, saturation saturation: UnsafeMutablePointer<CGFloat>, brightness brightness: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>)
  var whiteComponent: CGFloat { get }
  func getWhite(_ white: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>)
  var cyanComponent: CGFloat { get }
  var magentaComponent: CGFloat { get }
  var yellowComponent: CGFloat { get }
  var blackComponent: CGFloat { get }
  func getCyan(_ cyan: UnsafeMutablePointer<CGFloat>, magenta magenta: UnsafeMutablePointer<CGFloat>, yellow yellow: UnsafeMutablePointer<CGFloat>, black black: UnsafeMutablePointer<CGFloat>, alpha alpha: UnsafeMutablePointer<CGFloat>)
  var colorSpace: NSColorSpace { get }
  var numberOfComponents: Int { get }
  func getComponents(_ components: UnsafeMutablePointer<CGFloat>)
  var alphaComponent: CGFloat { get }
  /*not inherited*/ init?(from pasteBoard: NSPasteboard)
  func write(to pasteBoard: NSPasteboard)
  /*not inherited*/ init(patternImage image: NSImage)
  var patternImage: NSImage { get }
  func drawSwatch(in rect: NSRect)
  @available(OSX 10.8, *)
  /*not inherited*/ init?(cgColor cgColor: CGColor)
  @available(OSX 10.8, *)
  var cgColor: CGColor { get }
  class func setIgnoresAlpha(_ flag: Bool)
  class func ignoresAlpha() -> Bool
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  class func readableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypes(for pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptions(forType type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyList(forType type: String) -> AnyObject?
}

extension NSColor : _ColorLiteralConvertible {
}
extension NSColor {
  /*not inherited*/ init(ciColor color: CIColor)
}
extension CIColor {
  convenience init?(color color: NSColor)
}
extension NSCoder {
}
let NSSystemColorsDidChangeNotification: String
