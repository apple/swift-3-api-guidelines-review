
protocol NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  func provideNewButtonImage() -> NSImage
  func insertNewButtonImage(newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(sender: AnyObject?)
  func alphaControlAddedOrRemoved(sender: AnyObject?)
  func attach(colorList: NSColorList)
  func detach(colorList: NSColorList)
  func setMode(mode: NSColorPanelMode)
  @available(OSX 10.5, *)
  func buttonToolTip() -> String
  @available(OSX 10.5, *)
  func minContentSize() -> Size
}
protocol NSColorPickingCustom : NSColorPickingDefault {
  func supportsMode(mode: NSColorPanelMode) -> Bool
  func currentMode() -> NSColorPanelMode
  func provideNewView(initialRequest: Bool) -> NSView
  func setColor(newColor: NSColor)
}
