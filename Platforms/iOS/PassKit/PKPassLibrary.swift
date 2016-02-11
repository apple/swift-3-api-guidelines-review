
@available(iOS 7.0, *)
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case didAddPasses
  case shouldReviewPasses
  case didCancelAddPasses
}
@available(iOS 9.0, *)
enum PKAutomaticPassPresentationSuppressionResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notSupported
  case alreadyPresenting
  case denied
  case cancelled
  case success
}
typealias PKSuppressionRequestToken = Int
@available(iOS 6.0, *)
class PKPassLibrary : Object {
  @available(iOS 6.0, *)
  class func isPassLibraryAvailable() -> Bool
  @available(iOS 9.0, *)
  class func requestAutomaticPassPresentationSuppression(responseHandler responseHandler: (PKAutomaticPassPresentationSuppressionResult) -> Void) -> PKSuppressionRequestToken
  @available(iOS 9.0, *)
  class func endAutomaticPassPresentationSuppression(requestToken requestToken: PKSuppressionRequestToken)
  @available(iOS 9.0, *)
  class func isSuppressingAutomaticPassPresentation() -> Bool
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use -[PKPassLibrary isPaymentPassActivationAvailable] instead")
  class func isPaymentPassActivationAvailable() -> Bool
  @available(iOS 9.0, *)
  func isPaymentPassActivationAvailable() -> Bool
  func passes() -> [PKPass]
  func pass(passTypeIdentifier identifier: String, serialNumber: String) -> PKPass?
  @available(iOS 8.0, *)
  func passes(of passType: PKPassType) -> [PKPass]
  @available(iOS 9.0, *)
  func remotePaymentPasses() -> [PKPaymentPass]
  func removePass(pass: PKPass)
  func containsPass(pass: PKPass) -> Bool
  func replacePass(pass: PKPass) -> Bool
  @available(iOS 7.0, *)
  func addPasses(passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)? = nil)
  @available(iOS 8.3, *)
  func openPaymentSetup()
  @available(iOS 9.0, *)
  func canAddPaymentPass(withPrimaryAccountIdentifier primaryAccountIdentifier: String) -> Bool
  @available(iOS 8.0, *)
  func activatePaymentPass(paymentPass: PKPaymentPass, withActivationData activationData: Data, completion: ((Bool, Error) -> Void)? = nil)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use activatePaymentPass:withActivationData:completion: instead")
  func activatePaymentPass(paymentPass: PKPaymentPass, withActivationCode activationCode: String, completion: ((Bool, Error) -> Void)? = nil)
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
