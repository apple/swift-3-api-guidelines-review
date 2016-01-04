
@available(iOS 9.0, *)
enum PKAddPassButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Black
  case BlackOutline
}
@available(iOS 9.0, *)
class PKAddPassButton : UIButton {
  convenience init(style addPassButtonStyle: PKAddPassButtonStyle)
  init(addPassButtonStyle style: PKAddPassButtonStyle)
  var addPassButtonStyle: PKAddPassButtonStyle
  convenience init(type buttonType: UIButtonType)
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol PKAddPassesViewControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func addPassesViewControllerDidFinish(controller: PKAddPassesViewController)
}
@available(iOS 6.0, *)
class PKAddPassesViewController : UIViewController {
  init(pass: PKPass)
  @available(iOS 7.0, *)
  init(passes: [PKPass])
  @available(iOS 8.0, *)
  class func canAddPasses() -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged PKAddPassesViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 9.0, *)
enum PKAddPaymentPassError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unsupported
  case UserCancelled
  case SystemCancelled
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
  func addPaymentPassViewController(controller: PKAddPaymentPassViewController, didFinishAddingPaymentPass pass: PKPaymentPass?, error: NSError?)
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
@available(iOS 9.0, *)
let PKEncryptionSchemeECC_V2: String
@available(iOS 8.0, *)
let PKPaymentNetworkAmex: String
@available(iOS 9.2, *)
let PKPaymentNetworkChinaUnionPay: String
@available(iOS 9.0, *)
let PKPaymentNetworkDiscover: String
@available(iOS 9.2, *)
let PKPaymentNetworkInterac: String
@available(iOS 8.0, *)
let PKPaymentNetworkMasterCard: String
@available(iOS 9.0, *)
let PKPaymentNetworkPrivateLabel: String
@available(iOS 8.0, *)
let PKPaymentNetworkVisa: String
@available(iOS 9.0, *)
class PKContact : NSObject {
  var name: NSPersonNameComponents?
  var postalAddress: CNPostalAddress?
  var emailAddress: String?
  var phoneNumber: CNPhoneNumber?
  @available(iOS 9.2, *)
  var supplementarySubLocality: String?
  init()
}
@available(iOS 6.0, *)
let PKPassKitErrorDomain: String
@available(iOS 6.0, *)
enum PKPassKitErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case InvalidDataError
  case UnsupportedVersionError
  case InvalidSignature
  case NotEntitledError
}

@available(iOS 6.0, *)
extension PKPassKitErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
class PKObject : NSObject {
  init()
}
@available(iOS 8.0, *)
enum PKPassType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Barcode
  case Payment
  case Any
}
class PKPass : PKObject {
  init(data: NSData, error: NSErrorPointer)
  @available(iOS 8.0, *)
  var passType: PKPassType { get }
  @available(iOS 8.0, *)
  unowned(unsafe) var paymentPass: @sil_unmanaged PKPaymentPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  @NSCopying var webServiceURL: NSURL? { get }
  var authenticationToken: String? { get }
  @NSCopying var icon: UIImage { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  @NSCopying var relevantDate: NSDate? { get }
  @available(iOS 7.0, *)
  var userInfo: [NSObject : AnyObject]? { get }
  @NSCopying var passURL: NSURL { get }
  @available(iOS 9.0, *)
  var remotePass: Bool { get }
  @available(iOS 9.0, *)
  var deviceName: String { get }
  func localizedValueForFieldKey(key: String) -> AnyObject?
  init()
}
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
@available(iOS 8.0, *)
class PKPayment : NSObject {
  var token: PKPaymentToken { get }
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use billingContact instead")
  var billingAddress: ABRecord? { get }
  @available(iOS 9.0, *)
  var billingContact: PKContact? { get }
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use shippingContact instead")
  var shippingAddress: ABRecord? { get }
  @available(iOS 9.0, *)
  var shippingContact: PKContact? { get }
  var shippingMethod: PKShippingMethod? { get }
  init()
}
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
protocol PKPaymentAuthorizationViewControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion: (PKPaymentAuthorizationStatus) -> Void)
  @available(iOS 8.0, *)
  func paymentAuthorizationViewControllerDidFinish(controller: PKPaymentAuthorizationViewController)
  @available(iOS 8.3, *)
  optional func paymentAuthorizationViewControllerWillAuthorizePayment(controller: PKPaymentAuthorizationViewController)
  @available(iOS 8.0, *)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectShippingMethod shippingMethod: PKShippingMethod, completion: (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem]) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use the CNContact backed delegate method instead")
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectShippingAddress address: ABRecord, completion: (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(iOS 9.0, *)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact, completion: (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(iOS 9.0, *)
  optional func paymentAuthorizationViewController(controller: PKPaymentAuthorizationViewController, didSelectPaymentMethod paymentMethod: PKPaymentMethod, completion: ([PKPaymentSummaryItem]) -> Void)
}
@available(iOS 8.0, *)
class PKPaymentAuthorizationViewController : UIViewController {
  class func canMakePayments() -> Bool
  class func canMakePaymentsUsingNetworks(supportedNetworks: [String]) -> Bool
  @available(iOS 9.0, *)
  class func canMakePaymentsUsingNetworks(supportedNetworks: [String], capabilities capabilties: PKMerchantCapability) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged PKPaymentAuthorizationViewControllerDelegate?
  init(paymentRequest request: PKPaymentRequest)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
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
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 9.0, *)
class PKPaymentMethod : NSObject {
  var displayName: String? { get }
  var network: String? { get }
  var type: PKPaymentMethodType { get }
  var paymentPass: PKPaymentPass? { get }
  init()
}
@available(iOS 9.0, *)
struct PKPaymentMethodType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Unknown: PKPaymentMethodType { get }
  static var Debit: PKPaymentMethodType { get }
  static var Credit: PKPaymentMethodType { get }
  static var Prepaid: PKPaymentMethodType { get }
  static var Store: PKPaymentMethodType { get }
}
@available(iOS 8.0, *)
enum PKPaymentPassActivationState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Activated
  case RequiresActivation
  case Activating
  case Suspended
  case Deactivated
}
@available(iOS 8.0, *)
class PKPaymentPass : PKPass {
  var primaryAccountIdentifier: String { get }
  var primaryAccountNumberSuffix: String { get }
  var deviceAccountIdentifier: String { get }
  var deviceAccountNumberSuffix: String { get }
  var activationState: PKPaymentPassActivationState { get }
  init(data: NSData, error: NSErrorPointer)
  init()
}
@available(iOS 8.0, *)
struct PKMerchantCapability : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Capability3DS: PKMerchantCapability { get }
  static var CapabilityEMV: PKMerchantCapability { get }
  @available(iOS 9.0, *)
  static var CapabilityCredit: PKMerchantCapability { get }
  @available(iOS 9.0, *)
  static var CapabilityDebit: PKMerchantCapability { get }
}
@available(iOS 8.0, *)
struct PKAddressField : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: PKAddressField { get }
  static var PostalAddress: PKAddressField { get }
  static var Phone: PKAddressField { get }
  static var Email: PKAddressField { get }
  @available(iOS 8.3, *)
  static var Name: PKAddressField { get }
  static var All: PKAddressField { get }
}
@available(iOS 8.3, *)
enum PKShippingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Shipping
  case Delivery
  case StorePickup
  case ServicePickup
}
@available(iOS 9.0, *)
enum PKPaymentSummaryItemType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Final
  case Pending
}
@available(iOS 8.0, *)
class PKPaymentSummaryItem : NSObject {
  convenience init(label: String, amount: NSDecimalNumber)
  @available(iOS 9.0, *)
  convenience init(label: String, amount: NSDecimalNumber, type: PKPaymentSummaryItemType)
  var label: String
  @NSCopying var amount: NSDecimalNumber
  @available(iOS 9.0, *)
  var type: PKPaymentSummaryItemType
  init()
}
@available(iOS 8.0, *)
class PKShippingMethod : PKPaymentSummaryItem {
  var identifier: String?
  var detail: String?
  convenience init(label: String, amount: NSDecimalNumber)
  @available(iOS 9.0, *)
  convenience init(label: String, amount: NSDecimalNumber, type: PKPaymentSummaryItemType)
  init()
}
@available(iOS 8.0, *)
class PKPaymentRequest : NSObject {
  var merchantIdentifier: String
  var countryCode: String
  var supportedNetworks: [String]
  var merchantCapabilities: PKMerchantCapability
  var paymentSummaryItems: [PKPaymentSummaryItem]
  var currencyCode: String
  var requiredBillingAddressFields: PKAddressField
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use billingContact instead")
  unowned(unsafe) var billingAddress: @sil_unmanaged ABRecord?
  @available(iOS 9.0, *)
  var billingContact: PKContact?
  var requiredShippingAddressFields: PKAddressField
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use shippingContact instead")
  unowned(unsafe) var shippingAddress: @sil_unmanaged ABRecord?
  @available(iOS 9.0, *)
  var shippingContact: PKContact?
  var shippingMethods: [PKShippingMethod]?
  @available(iOS 8.3, *)
  var shippingType: PKShippingType
  @NSCopying var applicationData: NSData?
  init()
}
@available(iOS 8.0, *)
class PKPaymentToken : NSObject {
  @available(iOS 9.0, *)
  var paymentMethod: PKPaymentMethod { get }
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use paymentMethod instead")
  var paymentInstrumentName: String { get }
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use paymentMethod instead")
  var paymentNetwork: String { get }
  var transactionIdentifier: String { get }
  var paymentData: NSData { get }
  init()
}
