
@available(iOS 7.0, *)
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DidAddPasses
  case ShouldReviewPasses
  case DidCancelAddPasses
}
@available(iOS 9.0, *)
enum PKAutomaticPassPresentationSuppressionResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotSupported
  case AlreadyPresenting
  case Denied
  case Cancelled
  case Success
}
typealias PKSuppressionRequestToken = Int
@available(iOS 6.0, *)
class PKPassLibrary : NSObject {
  @available(iOS 6.0, *)
  class func isPassLibraryAvailable() -> Bool
  @available(iOS 9.0, *)
  class func requestAutomaticPassPresentationSuppressionWithResponseHandler(responseHandler: (PKAutomaticPassPresentationSuppressionResult) -> Void) -> PKSuppressionRequestToken
  @available(iOS 9.0, *)
  class func endAutomaticPassPresentationSuppressionWithRequestToken(requestToken: PKSuppressionRequestToken)
  @available(iOS 9.0, *)
  class func isSuppressingAutomaticPassPresentation() -> Bool
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use -[PKPassLibrary isPaymentPassActivationAvailable] instead")
  class func isPaymentPassActivationAvailable() -> Bool
  @available(iOS 9.0, *)
  func isPaymentPassActivationAvailable() -> Bool
  func passes() -> [PKPass]
  func passWithPassTypeIdentifier(identifier: String, serialNumber: String) -> PKPass?
  @available(iOS 8.0, *)
  func passesOfType(passType: PKPassType) -> [PKPass]
  @available(iOS 9.0, *)
  func remotePaymentPasses() -> [PKPaymentPass]
  func removePass(pass: PKPass)
  func containsPass(pass: PKPass) -> Bool
  func replacePassWithPass(pass: PKPass) -> Bool
  @available(iOS 7.0, *)
  func addPasses(passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)?)
  @available(iOS 8.3, *)
  func openPaymentSetup()
  @available(iOS 9.0, *)
  func canAddPaymentPassWithPrimaryAccountIdentifier(primaryAccountIdentifier: String) -> Bool
  @available(iOS 8.0, *)
  func activatePaymentPass(paymentPass: PKPaymentPass, withActivationData activationData: NSData, completion: ((Bool, NSError) -> Void)?)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use activatePaymentPass:withActivationData:completion: instead")
  func activatePaymentPass(paymentPass: PKPaymentPass, withActivationCode activationCode: String, completion: ((Bool, NSError) -> Void)?)
  init()
}
@available(iOS 6.0, *)
let PKPassLibraryDidChangeNotification: String
@available(iOS 9.0, *)
let PKPassLibraryRemotePaymentPassesDidChangeNotification: String
@available(iOS 6.0, *)
let PKPassLibraryAddedPassesUserInfoKey: String
@available(iOS 6.0, *)
let PKPassLibraryReplacementPassesUserInfoKey: String
@available(iOS 6.0, *)
let PKPassLibraryRemovedPassInfosUserInfoKey: String
@available(iOS 6.0, *)
let PKPassLibraryPassTypeIdentifierUserInfoKey: String
@available(iOS 6.0, *)
let PKPassLibrarySerialNumberUserInfoKey: String
