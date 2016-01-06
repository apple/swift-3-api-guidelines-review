
@available(iOS 5.0, *)
class ACAccount : NSObject {
  init!(accountType type: ACAccountType!)
  var identifier: String! { get }
  var accountType: ACAccountType!
  var accountDescription: String!
  var username: String!
  @available(iOS 7.0, *)
  var userFullName: String! { get }
  var credential: ACAccountCredential!
  convenience init()
}
@available(iOS 5.0, *)
class ACAccountCredential : NSObject {
  init!(oAuthToken token: String!, tokenSecret secret: String!)
  init!(oAuth2Token token: String!, refreshToken: String!, expiryDate: NSDate!)
  var oauthToken: String!
  init()
}
enum ACAccountCredentialRenewResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Renewed
  case Rejected
  case Failed
}
typealias ACAccountStoreSaveCompletionHandler = (Bool, NSError!) -> Void
typealias ACAccountStoreRemoveCompletionHandler = (Bool, NSError!) -> Void
typealias ACAccountStoreRequestAccessCompletionHandler = (Bool, NSError!) -> Void
typealias ACAccountStoreCredentialRenewalHandler = (ACAccountCredentialRenewResult, NSError!) -> Void
@available(iOS 5.0, *)
class ACAccountStore : NSObject {
  var accounts: [AnyObject]! { get }
  func accountWithIdentifier(identifier: String!) -> ACAccount!
  func accountTypeWithAccountTypeIdentifier(typeIdentifier: String!) -> ACAccountType!
  func accountsWith(accountType: ACAccountType!) -> [AnyObject]!
  func saveAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreSaveCompletionHandler!)
  func requestAccessToAccountsWith(accountType: ACAccountType!, options: [NSObject : AnyObject]! = [:], completion: ACAccountStoreRequestAccessCompletionHandler!)
  func renewCredentialsFor(account: ACAccount!, completion completionHandler: ACAccountStoreCredentialRenewalHandler!)
  func removeAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreRemoveCompletionHandler!)
  init()
}
@available(iOS 5.0, *)
let ACAccountStoreDidChangeNotification: String
@available(iOS 5.0, *)
let ACAccountTypeIdentifierTwitter: String
@available(iOS 6.0, *)
let ACAccountTypeIdentifierFacebook: String
@available(iOS 6.0, *)
let ACAccountTypeIdentifierSinaWeibo: String
@available(iOS 7.0, *)
let ACAccountTypeIdentifierTencentWeibo: String
@available(iOS 6.0, *)
let ACFacebookAppIdKey: String
@available(iOS 6.0, *)
let ACFacebookPermissionsKey: String
@available(iOS 6.0, *)
let ACFacebookAudienceKey: String
@available(iOS 6.0, *)
let ACFacebookAudienceEveryone: String
@available(iOS 6.0, *)
let ACFacebookAudienceFriends: String
@available(iOS 6.0, *)
let ACFacebookAudienceOnlyMe: String
@available(iOS 7.0, *)
let ACTencentWeiboAppIdKey: String
@available(iOS 5.0, *)
class ACAccountType : NSObject {
  var accountTypeDescription: String! { get }
  var identifier: String! { get }
  var accessGranted: Bool { get }
  init()
}
@available(iOS 5.0, *)
let ACErrorDomain: String
struct ACErrorCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var ACErrorUnknown: ACErrorCode { get }
var ACErrorAccountMissingRequiredProperty: ACErrorCode { get }
var ACErrorAccountAuthenticationFailed: ACErrorCode { get }
var ACErrorAccountTypeInvalid: ACErrorCode { get }
var ACErrorAccountAlreadyExists: ACErrorCode { get }
var ACErrorAccountNotFound: ACErrorCode { get }
var ACErrorPermissionDenied: ACErrorCode { get }
var ACErrorAccessInfoInvalid: ACErrorCode { get }
var ACErrorClientPermissionDenied: ACErrorCode { get }
var ACErrorAccessDeniedByProtectionPolicy: ACErrorCode { get }
var ACErrorCredentialNotFound: ACErrorCode { get }
var ACErrorFetchCredentialFailed: ACErrorCode { get }
var ACErrorStoreCredentialFailed: ACErrorCode { get }
var ACErrorRemoveCredentialFailed: ACErrorCode { get }
var ACErrorUpdatingNonexistentAccount: ACErrorCode { get }
var ACErrorInvalidClientBundleID: ACErrorCode { get }
var ACErrorDeniedByPlugin: ACErrorCode { get }
var ACErrorCoreDataSaveFailed: ACErrorCode { get }
var ACErrorFailedSerializingAccountInfo: ACErrorCode { get }
var ACErrorInvalidCommand: ACErrorCode { get }
var ACErrorMissingTransportMessageID: ACErrorCode { get }
var ACErrorCredentialItemNotFound: ACErrorCode { get }
var ACErrorCredentialItemNotExpired: ACErrorCode { get }
