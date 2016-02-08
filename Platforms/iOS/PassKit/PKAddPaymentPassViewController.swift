
@available(iOS 9.0, *)
enum PKAddPaymentPassError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unsupported
  case userCancelled
  case systemCancelled
}
@available(iOS 9.0, *)
class PKAddPaymentPassRequestConfiguration : Object {
  init?(encryptionScheme: String)
  var encryptionScheme: String { get }
  var cardholderName: String?
  var primaryAccountSuffix: String?
  var localizedDescription: String?
  var primaryAccountIdentifier: String?
  var paymentNetwork: String?
  convenience init()
}
@available(iOS 9.0, *)
class PKAddPaymentPassRequest : Object {
  init()
  @NSCopying var encryptedPassData: Data?
  @NSCopying var activationData: Data?
  @NSCopying var ephemeralPublicKey: Data?
  @NSCopying var wrappedKey: Data?
}
protocol PKAddPaymentPassViewControllerDelegate : ObjectProtocol {
  @available(iOS 9.0, *)
  func addPaymentPassViewController(controller: PKAddPaymentPassViewController, generateRequestWithCertificateChain certificates: [Data], nonce: Data, nonceSignature: Data, completionHandler handler: (PKAddPaymentPassRequest) -> Void)
  @available(iOS 9.0, *)
  func addPaymentPassViewController(controller: PKAddPaymentPassViewController, didFinishAdding pass: PKPaymentPass?, error: Error?)
}
@available(iOS 9.0, *)
class PKAddPaymentPassViewController : UIViewController {
  class func canAddPaymentPass() -> Bool
  init?(requestConfiguration configuration: PKAddPaymentPassRequestConfiguration, delegate: PKAddPaymentPassViewControllerDelegate?)
  weak var delegate: @sil_weak PKAddPaymentPassViewControllerDelegate?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
