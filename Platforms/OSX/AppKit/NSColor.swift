
var NSAppKitVersionNumberWithPatternColorLeakFix: Double { get }
class NSColor : Object, Copying, SecureCoding, NSPasteboardReading, NSPasteboardWriting {
  init()
  init?(coder: Coder)
  /*not inherited*/ init(calibratedWhite white: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(calibratedHue hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(calibratedRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceWhite white: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceHue hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceCyan cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  /*not inherited*/ init?(catalogName listName: String, colorName: String)
  /*not inherited*/ init(colorSpace space: NSColorSpace, components: UnsafePointer<CGFloat>, count numberOfComponents: Int)
  @available(OSX 10.7, *)
  /*not inherited*/ init(genericGamma22White white: CGFloat, alpha: CGFloat)
  @available(OSX 10.7, *)
  /*not inherited*/ init(srgbRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(white: CGFloat, alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
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
  func highlightWithLevel(val: CGFloat) -> NSColor?
  func shadowWithLevel(val: CGFloat) -> NSColor?
  /*not inherited*/ init(forControlTint controlTint: NSControlTint)
  class func currentControlTint() -> NSControlTint
  func set()
  func setFill()
  func setStroke()
  var colorSpaceName: String { get }
  func usingColorSpaceName(colorSpace: String) -> NSColor?
  func usingColorSpaceName(colorSpace: String?, device deviceDescription: [String : AnyObject]?) -> NSColor?
  func usingColorSpace(space: NSColorSpace) -> NSColor?
  func blendedColor(withFraction fraction: CGFloat, of color: NSColor) -> NSColor?
  func withAlphaComponent(alpha: CGFloat) -> NSColor
  var catalogNameComponent: String { get }
  var colorNameComponent: String { get }
  var localizedCatalogNameComponent: String { get }
  var localizedColorNameComponent: String { get }
  var redComponent: CGFloat { get }
  var greenComponent: CGFloat { get }
  var blueComponent: CGFloat { get }
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var hueComponent: CGFloat { get }
  var saturationComponent: CGFloat { get }
  var brightnessComponent: CGFloat { get }
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var whiteComponent: CGFloat { get }
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var cyanComponent: CGFloat { get }
  var magentaComponent: CGFloat { get }
  var yellowComponent: CGFloat { get }
  var blackComponent: CGFloat { get }
  func getCyan(cyan: UnsafeMutablePointer<CGFloat>, magenta: UnsafeMutablePointer<CGFloat>, yellow: UnsafeMutablePointer<CGFloat>, black: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var colorSpace: NSColorSpace { get }
  var numberOfComponents: Int { get }
  func getComponents(components: UnsafeMutablePointer<CGFloat>)
  var alphaComponent: CGFloat { get }
  /*not inherited*/ init?(from pasteBoard: NSPasteboard)
  func write(to pasteBoard: NSPasteboard)
  /*not inherited*/ init(patternImage image: NSImage)
  var patternImage: NSImage { get }
  func drawSwatch(in rect: Rect)
  @available(OSX 10.8, *)
  /*not inherited*/ init?(cgColor: CGColor)
  @available(OSX 10.8, *)
  var cgColor: CGColor { get }
  class func setIgnoresAlpha(flag: Bool)
  class func ignoresAlpha() -> Bool
  func copy(withZone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  class func readableTypes(forPasteboard pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptions(forType type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypes(forPasteboard pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptions(forType type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyList(forType type: String) -> AnyObject?
}

extension NSColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
extension NSColor {
  /*not inherited*/ init(ciColor color: CIColor)
}
extension CIColor {
  convenience init?(color: NSColor)
}
extension Coder {
}
let NSSystemColorsDidChangeNotification: String
