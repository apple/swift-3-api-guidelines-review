
@available(tvOS 2.0, *)
class UIResponder : NSObject {
  func next() -> UIResponder?
  func canBecomeFirstResponder() -> Bool
  func becomeFirstResponder() -> Bool
  func canResignFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func isFirstResponder() -> Bool
  func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
  func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
  func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
  func touchesCancelled(_ touches: Set<UITouch>?, with event: UIEvent?)
  @available(tvOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(_ touches: Set<NSObject>)
  @available(tvOS 9.0, *)
  func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesChanged(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent?)
  @available(tvOS 3.0, *)
  func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?)
  @available(tvOS 3.0, *)
  func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
  @available(tvOS 3.0, *)
  func motionCancelled(_ motion: UIEventSubtype, with event: UIEvent?)
  @available(tvOS 4.0, *)
  func remoteControlReceived(with event: UIEvent?)
  @available(tvOS 3.0, *)
  func canPerformAction(_ action: Selector, withSender sender: AnyObject?) -> Bool
  @available(tvOS 7.0, *)
  func target(forAction action: Selector, withSender sender: AnyObject?) -> AnyObject?
  @available(tvOS 3.0, *)
  var undoManager: NSUndoManager? { get }
}
@available(tvOS 7.0, *)
struct UIKeyModifierFlags : OptionSetType {
  init(rawValue rawValue: Int)
  let rawValue: Int
  static var alphaShift: UIKeyModifierFlags { get }
  static var shift: UIKeyModifierFlags { get }
  static var control: UIKeyModifierFlags { get }
  static var alternate: UIKeyModifierFlags { get }
  static var command: UIKeyModifierFlags { get }
  static var numericPad: UIKeyModifierFlags { get }
}
@available(tvOS 7.0, *)
class UIKeyCommand : NSObject, NSCopying, NSSecureCoding {
  init?(coder aDecoder: NSCoder)
  var input: String { get }
  var modifierFlags: UIKeyModifierFlags { get }
  @available(tvOS 9.0, *)
  var discoverabilityTitle: String?
  /*not inherited*/ init(input input: String, modifierFlags modifierFlags: UIKeyModifierFlags, action action: Selector)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(input input: String, modifierFlags modifierFlags: UIKeyModifierFlags, action action: Selector, discoverabilityTitle discoverabilityTitle: String)
  @available(tvOS 7.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 7.0, *)
  func encode(with aCoder: NSCoder)
}
extension UIResponder {
  @available(tvOS 7.0, *)
  var keyCommands: [UIKeyCommand]? { get }
}
extension NSObject {
  @available(tvOS 3.0, *)
  class func cut(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  func cut(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func copy(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  func copy(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func paste(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  func paste(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func select(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  func select(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func selectAll(_ sender: AnyObject?)
  @available(tvOS 3.0, *)
  func selectAll(_ sender: AnyObject?)
  @available(tvOS 3.2, *)
  class func delete(_ sender: AnyObject?)
  @available(tvOS 3.2, *)
  func delete(_ sender: AnyObject?)
  @available(tvOS 5.0, *)
  class func makeTextWritingDirectionLeftToRight(_ sender: AnyObject?)
  @available(tvOS 5.0, *)
  func makeTextWritingDirectionLeftToRight(_ sender: AnyObject?)
  @available(tvOS 5.0, *)
  class func makeTextWritingDirectionRightToLeft(_ sender: AnyObject?)
  @available(tvOS 5.0, *)
  func makeTextWritingDirectionRightToLeft(_ sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleBoldface(_ sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleBoldface(_ sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleItalics(_ sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleItalics(_ sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleUnderline(_ sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleUnderline(_ sender: AnyObject?)
  @available(tvOS 7.0, *)
  class func increaseSize(_ sender: AnyObject?)
  @available(tvOS 7.0, *)
  func increaseSize(_ sender: AnyObject?)
  @available(tvOS 7.0, *)
  class func decreaseSize(_ sender: AnyObject?)
  @available(tvOS 7.0, *)
  func decreaseSize(_ sender: AnyObject?)
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
  class func clearTextInputContextIdentifier(_ identifier: String)
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
  var userActivity: NSUserActivity?
  @available(tvOS 8.0, *)
  func updateUserActivityState(_ activity: NSUserActivity)
  @available(tvOS 8.0, *)
  func restoreUserActivityState(_ activity: NSUserActivity)
}
