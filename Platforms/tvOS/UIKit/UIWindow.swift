
typealias UIWindowLevel = CGFloat
@available(tvOS 2.0, *)
class UIWindow : UIView {
  @available(tvOS 3.2, *)
  var screen: UIScreen
  var windowLevel: UIWindowLevel
  var isKeyWindow: Bool { get }
  func becomeKeyWindow()
  func resignKeyWindow()
  func makeKeyWindow()
  func makeKeyAndVisible()
  @available(tvOS 4.0, *)
  var rootViewController: UIViewController?
  func send(_ event: UIEvent)
  func convert(_ point: CGPoint, to window: UIWindow?) -> CGPoint
  func convert(_ point: CGPoint, from window: UIWindow?) -> CGPoint
  func convert(_ rect: CGRect, to window: UIWindow?) -> CGRect
  func convert(_ rect: CGRect, from window: UIWindow?) -> CGRect
}
let UIWindowLevelNormal: UIWindowLevel
let UIWindowLevelAlert: UIWindowLevel
let UIWindowDidBecomeVisibleNotification: String
let UIWindowDidBecomeHiddenNotification: String
let UIWindowDidBecomeKeyNotification: String
let UIWindowDidResignKeyNotification: String
let UIKeyboardWillShowNotification: String
let UIKeyboardDidShowNotification: String
let UIKeyboardWillHideNotification: String
let UIKeyboardDidHideNotification: String
@available(tvOS 3.2, *)
let UIKeyboardFrameBeginUserInfoKey: String
@available(tvOS 3.2, *)
let UIKeyboardFrameEndUserInfoKey: String
@available(tvOS 3.0, *)
let UIKeyboardAnimationDurationUserInfoKey: String
@available(tvOS 3.0, *)
let UIKeyboardAnimationCurveUserInfoKey: String
@available(tvOS 9.0, *)
let UIKeyboardIsLocalUserInfoKey: String
@available(tvOS 5.0, *)
let UIKeyboardWillChangeFrameNotification: String
@available(tvOS 5.0, *)
let UIKeyboardDidChangeFrameNotification: String
