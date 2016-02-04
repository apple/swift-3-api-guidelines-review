
class NSButton : NSControl, NSUserInterfaceValidations, NSAccessibilityButton {
  var title: String
  var alternateTitle: String
  var image: NSImage?
  var alternateImage: NSImage?
  var imagePosition: NSCellImagePosition
  func setButtonType(aType: NSButtonType)
  var state: Int
  var bordered: Bool
  var transparent: Bool
  func setPeriodicDelay(delay: Float, interval: Float)
  func getPeriodicDelay(delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  func highlight(flag: Bool)
  func performKeyEquivalent(key: NSEvent) -> Bool
  @available(OSX 10.10.3, *)
  var springLoaded: Bool
  @available(OSX 10.10.3, *)
  var maxAcceleratorLevel: Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityLabel() -> String?
  func accessibilityPerformPress() -> Bool
}
extension NSButton {
  @NSCopying var attributedTitle: NSAttributedString
  @NSCopying var attributedAlternateTitle: NSAttributedString
}
extension NSButton {
  var bezelStyle: NSBezelStyle
}
extension NSButton {
  var allowsMixedState: Bool
  func setNextState()
}
extension NSButton {
  var showsBorderOnlyWhileMouseInside: Bool
}
extension NSButton {
  var sound: NSSound?
}
extension NSButton {
}
