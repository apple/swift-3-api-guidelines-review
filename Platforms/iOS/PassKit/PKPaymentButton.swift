
@available(iOS 8.3, *)
enum PKPaymentButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case White
  case WhiteOutline
  case Black
}
@available(iOS 8.3, *)
enum PKPaymentButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case Buy
  @available(iOS 9.0, *)
  case SetUp
}
@available(iOS 8.3, *)
class PKPaymentButton : UIButton {
  convenience init(type buttonType: PKPaymentButtonType, style buttonStyle: PKPaymentButtonStyle)
  @available(iOS 9.0, *)
  init(paymentButtonType type: PKPaymentButtonType, paymentButtonStyle style: PKPaymentButtonStyle)
  convenience init(type buttonType: UIButtonType)
  convenience init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
