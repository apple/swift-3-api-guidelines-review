
@available(iOS 9.0, *)
class PKPaymentMethod : NSObject {
  var displayName: String? { get }
  var network: String? { get }
  var type: PKPaymentMethodType { get }
  var paymentPass: PKPaymentPass? { get }
}
@available(iOS 9.0, *)
struct PKPaymentMethodType : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Unknown: PKPaymentMethodType { get }
  static var Debit: PKPaymentMethodType { get }
  static var Credit: PKPaymentMethodType { get }
  static var Prepaid: PKPaymentMethodType { get }
  static var Store: PKPaymentMethodType { get }
}
