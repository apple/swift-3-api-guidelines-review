
@available(iOS 8.0, *)
enum PKPaymentAuthorizationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Success
  case Failure
  case InvalidBillingPostalAddress
  case InvalidShippingPostalAddress
  case InvalidShippingContact
  @available(iOS 9.2, *)
  case PINRequired
  @available(iOS 9.2, *)
  case PINIncorrect
  @available(iOS 9.2, *)
  case PINLockout
}
protocol PKPaymentAuthorizationViewControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion completion: (PKPaymentAuthorizationStatus) -> Void)
  @available(iOS 8.0, *)
  func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController)
  @available(iOS 8.3, *)
  optional func paymentAuthorizationViewControllerWillAuthorizePayment(_ controller: PKPaymentAuthorizationViewController)
  @available(iOS 8.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingMethod shippingMethod: PKShippingMethod, completion completion: (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem]) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use the CNContact backed delegate method instead")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingAddress address: ABRecord, completion completion: (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(iOS 9.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact, completion completion: (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(iOS 9.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectPaymentMethod paymentMethod: PKPaymentMethod, completion completion: ([PKPaymentSummaryItem]) -> Void)
}
@available(iOS 8.0, *)
class PKPaymentAuthorizationViewController : UIViewController {
  class func canMakePayments() -> Bool
  class func canMakePaymentsUsingNetworks(_ supportedNetworks: [String]) -> Bool
  @available(iOS 9.0, *)
  class func canMakePaymentsUsingNetworks(_ supportedNetworks: [String], capabilities capabilties: PKMerchantCapability) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged PKPaymentAuthorizationViewControllerDelegate?
  init(paymentRequest request: PKPaymentRequest)
}
