
enum NSColorPanelMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.5, *)
  case NSNoModeColorPanel
  case NSGrayModeColorPanel
  case NSRGBModeColorPanel
  case NSCMYKModeColorPanel
  case NSHSBModeColorPanel
  case NSCustomPaletteModeColorPanel
  case NSColorListModeColorPanel
  case NSWheelModeColorPanel
  case NSCrayonModeColorPanel
}
struct NSColorPanelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var grayModeMask: NSColorPanelOptions { get }
  static var rgbModeMask: NSColorPanelOptions { get }
  static var cmykModeMask: NSColorPanelOptions { get }
  static var hsbModeMask: NSColorPanelOptions { get }
  static var customPaletteModeMask: NSColorPanelOptions { get }
  static var colorListModeMask: NSColorPanelOptions { get }
  static var wheelModeMask: NSColorPanelOptions { get }
  static var crayonModeMask: NSColorPanelOptions { get }
  static var allModesMask: NSColorPanelOptions { get }
}
class NSColorPanel : NSPanel {
  class func shared() -> NSColorPanel
  class func sharedColorPanelExists() -> Bool
  class func drag(color: NSColor, with theEvent: NSEvent, from sourceView: NSView) -> Bool
  class func setPickerMask(mask: NSColorPanelOptions)
  class func setPickerMode(mode: NSColorPanelMode)
  var accessoryView: NSView?
  var isContinuous: Bool
  var showsAlpha: Bool
  var mode: NSColorPanelMode
  @NSCopying var color: NSColor
  var alpha: CGFloat { get }
  func setAction(aSelector: Selector)
  func setTarget(anObject: AnyObject?)
  func attach(colorList: NSColorList)
  func detach(colorList: NSColorList)
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSApplication {
  func orderFrontColorPanel(sender: AnyObject?)
}
extension NSObject {
  class func changeColor(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
}
let NSColorPanelColorDidChangeNotification: String
