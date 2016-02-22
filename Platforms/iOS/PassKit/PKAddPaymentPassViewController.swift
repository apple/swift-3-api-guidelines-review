
@available(iOS 9.0, *)
enum PKAddPaymentPassError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unsupported
  case userCancelled
  case systemCancelled
}
@available(iOS 9.0, *)
class PKAddPaymentPassRequestConfiguration : NSObject {
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
class PKAddPaymentPassRequest : NSObject {
  init()
  @NSCopying var encryptedPassData: NSData?
  @NSCopying var activationData: NSData?
  @NSCopying var ephemeralPublicKey: NSData?
  @NSCopying var wrappedKey: NSData?
}
protocol PKAddPaymentPassViewControllerDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  func addPaymentPassViewController(controller: PKAddPaymentPassViewController, generateRequestWithCertificateChain certificates: [NSData], nonce: NSData, nonceSignature: NSData, completionHandler handler: (PKAddPaymentPassRequest) -> Void)
  @available(iOS 9.0, *)
  func addPaymentPassViewController(controller: PKAddPaymentPassViewController, didFinishAdding pass: PKPaymentPass?, error: NSError?)
}
@available(iOS 9.0, *)
class PKAddPaymentPassViewController : UIViewController {
  class func canAddPaymentPass() -> Bool
  init?(requestConfiguration configuration: PKAddPaymentPassRequestConfiguration, delegate: PKAddPaymentPassViewControllerDelegate?)
  weak var delegate: @sil_weak PKAddPaymentPassViewControllerDelegate?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
