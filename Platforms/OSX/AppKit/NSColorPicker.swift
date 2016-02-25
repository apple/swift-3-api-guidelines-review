
class NSColorPicker : NSObject, NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  var colorPanel: NSColorPanel { get }
  var provideNewButtonImage: NSImage { get }
  func insertNewButtonImage(_ newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(_ sender: AnyObject?)
  func attachColorList(_ colorList: NSColorList)
  func detachColorList(_ colorList: NSColorList)
  func setMode(_ mode: NSColorPanelMode)
  var buttonToolTip: String { get }
  var minContentSize: NSSize { get }
  func alphaControlAddedOrRemoved(_ sender: AnyObject?)
}
