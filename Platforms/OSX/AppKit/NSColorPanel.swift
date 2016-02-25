
enum NSColorPanelMode : Int {
  init?(rawValue rawValue: Int)
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var GrayModeMask: NSColorPanelOptions { get }
  static var RGBModeMask: NSColorPanelOptions { get }
  static var CMYKModeMask: NSColorPanelOptions { get }
  static var HSBModeMask: NSColorPanelOptions { get }
  static var CustomPaletteModeMask: NSColorPanelOptions { get }
  static var ColorListModeMask: NSColorPanelOptions { get }
  static var WheelModeMask: NSColorPanelOptions { get }
  static var CrayonModeMask: NSColorPanelOptions { get }
  static var AllModesMask: NSColorPanelOptions { get }
}
class NSColorPanel : NSPanel {
  class func sharedColorPanel() -> NSColorPanel
  class func sharedColorPanelExists() -> Bool
  class func dragColor(_ color: NSColor, withEvent theEvent: NSEvent, fromView sourceView: NSView) -> Bool
  class func setPickerMask(_ mask: NSColorPanelOptions)
  class func setPickerMode(_ mode: NSColorPanelMode)
  var accessoryView: NSView?
  var continuous: Bool
  var showsAlpha: Bool
  var mode: NSColorPanelMode
  @NSCopying var color: NSColor
  var alpha: CGFloat { get }
  func setAction(_ aSelector: Selector)
  func setTarget(_ anObject: AnyObject?)
  func attachColorList(_ colorList: NSColorList)
  func detachColorList(_ colorList: NSColorList)
}
extension NSApplication {
  func orderFrontColorPanel(_ sender: AnyObject?)
}
extension NSObject {
  class func changeColor(_ sender: AnyObject?)
  func changeColor(_ sender: AnyObject?)
}
let NSColorPanelColorDidChangeNotification: String
