
@available(tvOS 2.0, *)
class UIResponder : Object {
  func next() -> UIResponder?
  func canBecomeFirstResponder() -> Bool
  func becomeFirstResponder() -> Bool
  func canResignFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func isFirstResponder() -> Bool
  func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?)
  @available(tvOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(touches: Set<Object>)
  @available(tvOS 9.0, *)
  func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesChanged(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesEnded(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesCancelled(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(tvOS 3.0, *)
  func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(tvOS 3.0, *)
  func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(tvOS 3.0, *)
  func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(tvOS 4.0, *)
  func remoteControlReceivedWith(event: UIEvent?)
  @available(tvOS 3.0, *)
  func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool
  @available(tvOS 7.0, *)
  func targetFor(action action: Selector, withSender sender: AnyObject?) -> AnyObject?
  @available(tvOS 3.0, *)
  var undoManager: UndoManager? { get }
  init()
}
@available(tvOS 7.0, *)
struct UIKeyModifierFlags : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var alphaShift: UIKeyModifierFlags { get }
  static var shift: UIKeyModifierFlags { get }
  static var control: UIKeyModifierFlags { get }
  static var alternate: UIKeyModifierFlags { get }
  static var command: UIKeyModifierFlags { get }
  static var numericPad: UIKeyModifierFlags { get }
}
@available(tvOS 7.0, *)
class UIKeyCommand : Object, Copying, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  var input: String { get }
  var modifierFlags: UIKeyModifierFlags { get }
  @available(tvOS 9.0, *)
  var discoverabilityTitle: String?
  /*not inherited*/ init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
  @available(tvOS 7.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 7.0, *)
  func encodeWith(aCoder: Coder)
}
extension UIResponder {
  @available(tvOS 7.0, *)
  var keyCommands: [UIKeyCommand]? { get }
}
extension Object {
  @available(tvOS 3.0, *)
  class func cut(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func cut(sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func copy(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func copy(sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func paste(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func paste(sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func select(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func select(sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func selectAll(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func selectAll(sender: AnyObject?)
  @available(tvOS 3.2, *)
  class func delete(sender: AnyObject?)
  @available(tvOS 3.2, *)
  func delete(sender: AnyObject?)
  @available(tvOS 5.0, *)
  class func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(tvOS 5.0, *)
  func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(tvOS 5.0, *)
  class func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(tvOS 5.0, *)
  func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleBoldface(sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleBoldface(sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleItalics(sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleItalics(sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleUnderline(sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleUnderline(sender: AnyObject?)
  @available(tvOS 7.0, *)
  class func increaseSize(sender: AnyObject?)
  @available(tvOS 7.0, *)
  func increaseSize(sender: AnyObject?)
  @available(tvOS 7.0, *)
  class func decreaseSize(sender: AnyObject?)
  @available(tvOS 7.0, *)
  func decreaseSize(sender: AnyObject?)
}
extension UIResponder {
  @available(tvOS 3.2, *)
  var inputView: UIView? { get }
  @available(tvOS 3.2, *)
  var inputAccessoryView: UIView? { get }
  @available(tvOS 8.0, *)
  var inputViewController: UIInputViewController? { get }
  @available(tvOS 8.0, *)
  var inputAccessoryViewController: UIInputViewController? { get }
  @available(tvOS 7.0, *)
  var textInputMode: UITextInputMode? { get }
  @available(tvOS 7.0, *)
  var textInputContextIdentifier: String? { get }
  @available(tvOS 7.0, *)
  class func clearTextInputContextIdentifier(identifier: String)
  @available(tvOS 3.2, *)
  func reloadInputViews()
}
@available(tvOS 7.0, *)
let UIKeyInputUpArrow: String
@available(tvOS 7.0, *)
let UIKeyInputDownArrow: String
@available(tvOS 7.0, *)
let UIKeyInputLeftArrow: String
@available(tvOS 7.0, *)
let UIKeyInputRightArrow: String
@available(tvOS 7.0, *)
let UIKeyInputEscape: String
extension UIResponder {
  @available(tvOS 8.0, *)
  var userActivity: UserActivity?
  @available(tvOS 8.0, *)
  func updateUserActivityState(activity: UserActivity)
  @available(tvOS 8.0, *)
  func restoreUserActivityState(activity: UserActivity)
}
