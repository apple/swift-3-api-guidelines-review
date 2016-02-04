
@available(iOS 2.0, *)
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
  @available(iOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(touches: Set<Object>)
  @available(iOS 9.0, *)
  func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesChanged(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesEnded(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesCancelled(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 3.0, *)
  func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(iOS 3.0, *)
  func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(iOS 3.0, *)
  func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(iOS 4.0, *)
  func remoteControlReceivedWith(event: UIEvent?)
  @available(iOS 3.0, *)
  func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool
  @available(iOS 7.0, *)
  func targetForAction(action: Selector, withSender sender: AnyObject?) -> AnyObject?
  @available(iOS 3.0, *)
  var undoManager: UndoManager? { get }
  init()
}
@available(iOS 7.0, *)
struct UIKeyModifierFlags : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var AlphaShift: UIKeyModifierFlags { get }
  static var Shift: UIKeyModifierFlags { get }
  static var Control: UIKeyModifierFlags { get }
  static var Alternate: UIKeyModifierFlags { get }
  static var Command: UIKeyModifierFlags { get }
  static var NumericPad: UIKeyModifierFlags { get }
}
@available(iOS 7.0, *)
class UIKeyCommand : Object, Copying, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  var input: String { get }
  var modifierFlags: UIKeyModifierFlags { get }
  @available(iOS 9.0, *)
  var discoverabilityTitle: String?
  /*not inherited*/ init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
  @available(iOS 9.0, *)
  /*not inherited*/ init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
  @available(iOS 7.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
}
extension UIResponder {
  @available(iOS 7.0, *)
  var keyCommands: [UIKeyCommand]? { get }
}
extension Object {
  @available(iOS 3.0, *)
  class func cut(sender: AnyObject?)
  @available(iOS 3.0, *)
  func cut(sender: AnyObject?)
  @available(iOS 3.0, *)
  class func copy(sender: AnyObject?)
  @available(iOS 3.0, *)
  func copy(sender: AnyObject?)
  @available(iOS 3.0, *)
  class func paste(sender: AnyObject?)
  @available(iOS 3.0, *)
  func paste(sender: AnyObject?)
  @available(iOS 3.0, *)
  class func select(sender: AnyObject?)
  @available(iOS 3.0, *)
  func select(sender: AnyObject?)
  @available(iOS 3.0, *)
  class func selectAll(sender: AnyObject?)
  @available(iOS 3.0, *)
  func selectAll(sender: AnyObject?)
  @available(iOS 3.2, *)
  class func delete(sender: AnyObject?)
  @available(iOS 3.2, *)
  func delete(sender: AnyObject?)
  @available(iOS 5.0, *)
  class func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(iOS 5.0, *)
  func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(iOS 5.0, *)
  class func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(iOS 5.0, *)
  func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(iOS 6.0, *)
  class func toggleBoldface(sender: AnyObject?)
  @available(iOS 6.0, *)
  func toggleBoldface(sender: AnyObject?)
  @available(iOS 6.0, *)
  class func toggleItalics(sender: AnyObject?)
  @available(iOS 6.0, *)
  func toggleItalics(sender: AnyObject?)
  @available(iOS 6.0, *)
  class func toggleUnderline(sender: AnyObject?)
  @available(iOS 6.0, *)
  func toggleUnderline(sender: AnyObject?)
  @available(iOS 7.0, *)
  class func increaseSize(sender: AnyObject?)
  @available(iOS 7.0, *)
  func increaseSize(sender: AnyObject?)
  @available(iOS 7.0, *)
  class func decreaseSize(sender: AnyObject?)
  @available(iOS 7.0, *)
  func decreaseSize(sender: AnyObject?)
}
extension UIResponder {
  @available(iOS 3.2, *)
  var inputView: UIView? { get }
  @available(iOS 3.2, *)
  var inputAccessoryView: UIView? { get }
  @available(iOS 9.0, *)
  var inputAssistantItem: UITextInputAssistantItem { get }
  @available(iOS 8.0, *)
  var inputViewController: UIInputViewController? { get }
  @available(iOS 8.0, *)
  var inputAccessoryViewController: UIInputViewController? { get }
  @available(iOS 7.0, *)
  var textInputMode: UITextInputMode? { get }
  @available(iOS 7.0, *)
  var textInputContextIdentifier: String? { get }
  @available(iOS 7.0, *)
  class func clearTextInputContextIdentifier(identifier: String)
  @available(iOS 3.2, *)
  func reloadInputViews()
}
@available(iOS 7.0, *)
let UIKeyInputUpArrow: String
@available(iOS 7.0, *)
let UIKeyInputDownArrow: String
@available(iOS 7.0, *)
let UIKeyInputLeftArrow: String
@available(iOS 7.0, *)
let UIKeyInputRightArrow: String
@available(iOS 7.0, *)
let UIKeyInputEscape: String
extension UIResponder {
  @available(iOS 8.0, *)
  var userActivity: UserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(activity: UserActivity)
  @available(iOS 8.0, *)
  func restoreUserActivityState(activity: UserActivity)
}
