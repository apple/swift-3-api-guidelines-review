
protocol NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  func provideNewButtonImage() -> NSImage
  func insertNewButtonImage(_ newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(_ sender: AnyObject?)
  func alphaControlAddedOrRemoved(_ sender: AnyObject?)
  func attach(_ colorList: NSColorList)
  func detach(_ colorList: NSColorList)
  func setMode(_ mode: NSColorPanelMode)
  @available(OSX 10.5, *)
  func buttonToolTip() -> String
  @available(OSX 10.5, *)
  func minContentSize() -> NSSize
}
protocol NSColorPickingCustom : NSColorPickingDefault {
  func supportsMode(_ mode: NSColorPanelMode) -> Bool
  func currentMode() -> NSColorPanelMode
  func provideNewView(_ initialRequest: Bool) -> NSView
  func setColor(_ newColor: NSColor)
}
