
class NSButton : NSControl, NSUserInterfaceValidations, NSAccessibilityButton {
  var title: String
  var alternateTitle: String
  var image: NSImage?
  var alternateImage: NSImage?
  var imagePosition: NSCellImagePosition
  func setButtonType(_ aType: NSButtonType)
  var state: Int
  var bordered: Bool
  var transparent: Bool
  func setPeriodicDelay(_ delay: Float, interval interval: Float)
  func getPeriodicDelay(_ delay: UnsafeMutablePointer<Float>, interval interval: UnsafeMutablePointer<Float>)
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  func highlight(_ flag: Bool)
  @available(OSX 10.10.3, *)
  var springLoaded: Bool
  @available(OSX 10.10.3, *)
  var maxAcceleratorLevel: Int
  func validateUserInterfaceItem(_ anItem: NSValidatedUserInterfaceItem) -> Bool
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
