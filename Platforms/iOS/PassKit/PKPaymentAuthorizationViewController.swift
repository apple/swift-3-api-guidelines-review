
@available(iOS 8.0, *)
enum PKPaymentAuthorizationStatus : Int {
  init?(rawValue: Int)
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
protocol PKPaymentAuthorizationViewControllerDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion: (PKPaymentAuthorizationStatus) -> Void)
  @available(iOS 8.0, *)
  func paymentAuthorizationViewControllerDidFinish(controller: PKPaymentAuthorizationViewController)
  @available(iOS 8.3, *)
  optional func paymentAuthorizationViewControllerWillAuthorizePayment(controller: PKPaymentAuthorizationViewController)
  @available(iOS 8.0, *)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelect shippingMethod: PKShippingMethod, completion: (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem]) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use the CNContact backed delegate method instead")
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectShippingAddress address: ABRecord, completion: (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(iOS 9.0, *)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact, completion: (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(iOS 9.0, *)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelect paymentMethod: PKPaymentMethod, completion: ([PKPaymentSummaryItem]) -> Void)
}
@available(iOS 8.0, *)
class PKPaymentAuthorizationViewController : UIViewController {
  class func canMakePayments() -> Bool
  class func canMakePaymentsUsingNetworks(supportedNetworks: [String]) -> Bool
  @available(iOS 9.0, *)
  class func canMakePaymentsUsingNetworks(supportedNetworks: [String], capabilities capabilties: PKMerchantCapability) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged PKPaymentAuthorizationViewControllerDelegate?
  init(paymentRequest request: PKPaymentRequest)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
