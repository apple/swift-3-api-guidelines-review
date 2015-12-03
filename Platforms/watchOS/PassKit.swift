
@available(watchOS 2.0, *)
let PKEncryptionSchemeECC_V2: String
@available(watchOS 2.0, *)
let PKPaymentNetworkAmex: String
@available(watchOS 2.0, *)
let PKPaymentNetworkDiscover: String
@available(watchOS 2.0, *)
let PKPaymentNetworkMasterCard: String
@available(watchOS 2.0, *)
let PKPaymentNetworkPrivateLabel: String
@available(watchOS 2.0, *)
let PKPaymentNetworkVisa: String
@available(watchOS 2.0, *)
class PKContact : NSObject {
  var name: NSPersonNameComponents?
  var postalAddress: CNPostalAddress?
  var emailAddress: String?
  var phoneNumber: CNPhoneNumber?
  init()
}
@available(watchOS 2.0, *)
let PKPassKitErrorDomain: String
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
enum PKPassType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Barcode
  case Payment
  case Any
}
class PKPass : PKObject {
  init(data: NSData, error: NSErrorPointer)
  @available(watchOS 2.0, *)
  var passType: PKPassType { get }
  @available(watchOS 2.0, *)
  unowned(unsafe) var paymentPass: @sil_unmanaged PKPaymentPass? { get }
  var serialNumber: String { get }
  var passTypeIdentifier: String { get }
  @NSCopying var webServiceURL: NSURL? { get }
  var authenticationToken: String? { get }
  var localizedName: String { get }
  var localizedDescription: String { get }
  var organizationName: String { get }
  @NSCopying var relevantDate: NSDate? { get }
  @available(watchOS 2.0, *)
  var userInfo: [NSObject : AnyObject]? { get }
  @NSCopying var passURL: NSURL { get }
  @available(watchOS 2.0, *)
  var remotePass: Bool { get }
  @available(watchOS 2.0, *)
  var deviceName: String { get }
  func localizedValueForFieldKey(key: String) -> AnyObject?
  init()
}
@available(watchOS 2.0, *)
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DidAddPasses
  case ShouldReviewPasses
  case DidCancelAddPasses
}
typealias PKSuppressionRequestToken = Int
@available(watchOS 2.0, *)
class PKPassLibrary : NSObject {
  @available(watchOS 2.0, *)
  class func isPassLibraryAvailable() -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -[PKPassLibrary isPaymentPassActivationAvailable] instead")
  class func isPaymentPassActivationAvailable() -> Bool
  @available(watchOS 2.0, *)
  func isPaymentPassActivationAvailable() -> Bool
  func passes() -> [PKPass]
  func passWithPassTypeIdentifier(identifier: String, serialNumber: String) -> PKPass?
  @available(watchOS 2.0, *)
  func passesOfType(passType: PKPassType) -> [PKPass]
  @available(watchOS 2.0, *)
  func remotePaymentPasses() -> [PKPaymentPass]
  func removePass(pass: PKPass)
  func containsPass(pass: PKPass) -> Bool
  func replacePassWithPass(pass: PKPass) -> Bool
  @available(watchOS 2.0, *)
  func addPasses(passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)?)
  @available(watchOS 2.0, *)
  func canAddPaymentPassWithPrimaryAccountIdentifier(primaryAccountIdentifier: String) -> Bool
  init()
}
@available(watchOS 2.0, *)
let PKPassLibraryDidChangeNotification: String
@available(watchOS 2.0, *)
let PKPassLibraryRemotePaymentPassesDidChangeNotification: String
@available(watchOS 2.0, *)
let PKPassLibraryAddedPassesUserInfoKey: String
@available(watchOS 2.0, *)
let PKPassLibraryReplacementPassesUserInfoKey: String
@available(watchOS 2.0, *)
let PKPassLibraryRemovedPassInfosUserInfoKey: String
@available(watchOS 2.0, *)
let PKPassLibraryPassTypeIdentifierUserInfoKey: String
@available(watchOS 2.0, *)
let PKPassLibrarySerialNumberUserInfoKey: String
@available(watchOS 2.0, *)
enum PKPaymentPassActivationState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Activated
  case RequiresActivation
  case Activating
  case Suspended
  case Deactivated
}
@available(watchOS 2.0, *)
class PKPaymentPass : PKPass {
  var primaryAccountIdentifier: String { get }
  var primaryAccountNumberSuffix: String { get }
  var deviceAccountIdentifier: String { get }
  var deviceAccountNumberSuffix: String { get }
  var activationState: PKPaymentPassActivationState { get }
  init(data: NSData, error: NSErrorPointer)
  init()
}
