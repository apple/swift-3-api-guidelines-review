
@available(tvOS 7.0, *)
enum UIInputViewStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Keyboard
}
@available(tvOS 7.0, *)
class UIInputView : UIView {
  var inputViewStyle: UIInputViewStyle { get }
  @available(tvOS 9.0, *)
  var allowsSelfSizing: Bool
  init(frame frame: CGRect, inputViewStyle inputViewStyle: UIInputViewStyle)
}
