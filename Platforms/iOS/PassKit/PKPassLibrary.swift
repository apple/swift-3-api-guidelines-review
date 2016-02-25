
@available(iOS 7.0, *)
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case DidAddPasses
  case ShouldReviewPasses
  case DidCancelAddPasses
}
@available(iOS 9.0, *)
enum PKAutomaticPassPresentationSuppressionResult : UInt {
  init?(rawValue rawValue: UInt)
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
  class func requestAutomaticPassPresentationSuppressionWithResponseHandler(_ responseHandler: (PKAutomaticPassPresentationSuppressionResult) -> Void) -> PKSuppressionRequestToken
  @available(iOS 9.0, *)
  class func endAutomaticPassPresentationSuppressionWithRequestToken(_ requestToken: PKSuppressionRequestToken)
  @available(iOS 9.0, *)
  class func isSuppressingAutomaticPassPresentation() -> Bool
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use -[PKPassLibrary isPaymentPassActivationAvailable] instead")
  class func isPaymentPassActivationAvailable() -> Bool
  @available(iOS 9.0, *)
  func isPaymentPassActivationAvailable() -> Bool
  func passes() -> [PKPass]
  func passWithPassTypeIdentifier(_ identifier: String, serialNumber serialNumber: String) -> PKPass?
  @available(iOS 8.0, *)
  func passesOfType(_ passType: PKPassType) -> [PKPass]
  @available(iOS 9.0, *)
  func remotePaymentPasses() -> [PKPaymentPass]
  func removePass(_ pass: PKPass)
  func containsPass(_ pass: PKPass) -> Bool
  func replacePassWithPass(_ pass: PKPass) -> Bool
  @available(iOS 7.0, *)
  func addPasses(_ passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)?)
  @available(iOS 8.3, *)
  func openPaymentSetup()
  @available(iOS 9.0, *)
  func canAddPaymentPassWithPrimaryAccountIdentifier(_ primaryAccountIdentifier: String) -> Bool
  @available(iOS 8.0, *)
  func activatePaymentPass(_ paymentPass: PKPaymentPass, withActivationData activationData: NSData, completion completion: ((Bool, NSError) -> Void)?)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use activatePaymentPass:withActivationData:completion: instead")
  func activatePaymentPass(_ paymentPass: PKPaymentPass, withActivationCode activationCode: String, completion completion: ((Bool, NSError) -> Void)?)
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
