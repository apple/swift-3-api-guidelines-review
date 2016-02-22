
class NSColorPicker : NSObject, NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  var colorPanel: NSColorPanel { get }
  var provideNewButtonImage: NSImage { get }
  func insertNewButtonImage(newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(sender: AnyObject?)
  func attach(colorList: NSColorList)
  func detach(colorList: NSColorList)
  func setMode(mode: NSColorPanelMode)
  var buttonToolTip: String { get }
  var minContentSize: NSSize { get }
  init()
  func alphaControlAddedOrRemoved(sender: AnyObject?)
}
