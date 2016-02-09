
@available(iOS 7.0, *)
enum UIInputViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case keyboard
}
@available(iOS 7.0, *)
class UIInputView : UIView {
  var inputViewStyle: UIInputViewStyle { get }
  @available(iOS 9.0, *)
  var allowsSelfSizing: Bool
  init(frame: CGRect, inputViewStyle: UIInputViewStyle = .`default`)
  init?(coder aDecoder: Coder)
  convenience init(frame: CGRect)
  convenience init()
}
