
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
  /*not inherited*/ init(SRGBRed red: CGFloat, green green: CGFloat, blue blue: CGFloat, alpha alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(white white: CGFloat, alpha alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(red red: CGFloat, green green: CGFloat, blue blue: CGFloat, alpha alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(hue hue: CGFloat, saturation saturation: CGFloat, brightness brightness: CGFloat, alpha alpha: CGFloat)
  class func blackColor() -> NSColor
  class func darkGrayColor() -> NSColor
  class func lightGrayColor() -> NSColor
  class func whiteColor() -> NSColor
  class func grayColor() -> NSColor
  class func redColor() -> NSColor
  class func greenColor() -> NSColor
  class func blueColor() -> NSColor
  class func cyanColor() -> NSColor
  class func yellowColor() -> NSColor
  class func magentaColor() -> NSColor
  class func orangeColor() -> NSColor
  class func purpleColor() -> NSColor
  class func brownColor() -> NSColor
  class func clearColor() -> NSColor
  class func controlShadowColor() -> NSColor
  class func controlDarkShadowColor() -> NSColor
  class func controlColor() -> NSColor
  class func controlHighlightColor() -> NSColor
  class func controlLightHighlightColor() -> NSColor
  class func controlTextColor() -> NSColor
  class func controlBackgroundColor() -> NSColor
  class func selectedControlColor() -> NSColor
  class func secondarySelectedControlColor() -> NSColor
  class func selectedControlTextColor() -> NSColor
  class func disabledControlTextColor() -> NSColor
  class func textColor() -> NSColor
  class func textBackgroundColor() -> NSColor
  class func selectedTextColor() -> NSColor
  class func selectedTextBackgroundColor() -> NSColor
  class func gridColor() -> NSColor
  class func keyboardFocusIndicatorColor() -> NSColor
  class func windowBackgroundColor() -> NSColor
  @available(OSX 10.8, *)
  class func underPageBackgroundColor() -> NSColor
  @available(OSX 10.10, *)
  class func labelColor() -> NSColor
  @available(OSX 10.10, *)
  class func secondaryLabelColor() -> NSColor
  @available(OSX 10.10, *)
  class func tertiaryLabelColor() -> NSColor
  @available(OSX 10.10, *)
  class func quaternaryLabelColor() -> NSColor
  class func scrollBarColor() -> NSColor
  class func knobColor() -> NSColor
  class func selectedKnobColor() -> NSColor
  class func windowFrameColor() -> NSColor
  class func windowFrameTextColor() -> NSColor
  class func selectedMenuItemColor() -> NSColor
  class func selectedMenuItemTextColor() -> NSColor
  class func highlightColor() -> NSColor
  class func shadowColor() -> NSColor
  class func headerColor() -> NSColor
  class func headerTextColor() -> NSColor
  class func alternateSelectedControlColor() -> NSColor
  class func alternateSelectedControlTextColor() -> NSColor
  class func controlAlternatingRowBackgroundColors() -> [NSColor]
  func highlightWithLevel(_ val: CGFloat) -> NSColor?
  func shadowWithLevel(_ val: CGFloat) -> NSColor?
  /*not inherited*/ init(forControlTint controlTint: NSControlTint)
  class func currentControlTint() -> NSControlTint
  func set()
  func setFill()
  func setStroke()
  var colorSpaceName: String { get }
  func colorUsingColorSpaceName(_ colorSpace: String) -> NSColor?
  func colorUsingColorSpaceName(_ colorSpace: String?, device deviceDescription: [String : AnyObject]?) -> NSColor?
  func colorUsingColorSpace(_ space: NSColorSpace) -> NSColor?
  func blendedColorWithFraction(_ fraction: CGFloat, ofColor color: NSColor) -> NSColor?
  func colorWithAlphaComponent(_ alpha: CGFloat) -> NSColor
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
  /*not inherited*/ init?(fromPasteboard pasteBoard: NSPasteboard)
  func writeToPasteboard(_ pasteBoard: NSPasteboard)
  /*not inherited*/ init(patternImage image: NSImage)
  var patternImage: NSImage { get }
  func drawSwatchInRect(_ rect: NSRect)
  @available(OSX 10.8, *)
  /*not inherited*/ init?(CGColor cgColor: CGColor)
  @available(OSX 10.8, *)
  var CGColor: CGColor { get }
  class func setIgnoresAlpha(_ flag: Bool)
  class func ignoresAlpha() -> Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  class func readableTypesForPasteboard(_ pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(_ type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesForPasteboard(_ pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(_ type: String, pasteboard pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(_ type: String) -> AnyObject?
}

extension NSColor : _ColorLiteralConvertible {
}
extension NSColor {
  /*not inherited*/ init(CIColor color: CIColor)
}
extension CIColor {
  convenience init?(color color: NSColor)
}
extension NSCoder {
}
let NSSystemColorsDidChangeNotification: String
