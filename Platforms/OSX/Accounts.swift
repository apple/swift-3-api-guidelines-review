
@available(OSX 10.8, *)
class ACAccount : NSObject {
  init!(accountType type: ACAccountType!)
  var identifier: String! { get }
  var accountType: ACAccountType!
  var accountDescription: String!
  var username: String!
  var credential: ACAccountCredential!
  convenience init()
}
@available(OSX 10.8, *)
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
@available(OSX 10.8, *)
class ACAccountStore : NSObject {
  var accounts: [AnyObject]! { get }
  func accountWithIdentifier(identifier: String!) -> ACAccount!
  func accountTypeWithAccountTypeIdentifier(typeIdentifier: String!) -> ACAccountType!
  func accountsWith(accountType: ACAccountType!) -> [AnyObject]!
  func saveAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreSaveCompletionHandler!)
  func requestAccessToAccountsWith(accountType: ACAccountType!, options: [NSObject : AnyObject]!, completion: ACAccountStoreRequestAccessCompletionHandler!)
  func renewCredentialsFor(account: ACAccount!, completion completionHandler: ACAccountStoreCredentialRenewalHandler!)
  func removeAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreRemoveCompletionHandler!)
  init()
}
@available(OSX 10.8, *)
let ACAccountStoreDidChangeNotification: String
@available(OSX 10.8, *)
let ACAccountTypeIdentifierTwitter: String
@available(OSX 10.8, *)
let ACAccountTypeIdentifierFacebook: String
@available(OSX 10.8, *)
let ACAccountTypeIdentifierSinaWeibo: String
@available(OSX 10.9, *)
let ACAccountTypeIdentifierTencentWeibo: String
@available(OSX 10.9, *)
let ACAccountTypeIdentifierLinkedIn: String
@available(OSX 10.8, *)
let ACFacebookAppIdKey: String
@available(OSX 10.8, *)
let ACFacebookPermissionsKey: String
@available(OSX 10.8, *)
let ACFacebookAudienceKey: String
@available(OSX 10.8, *)
let ACFacebookAudienceEveryone: String
@available(OSX 10.8, *)
let ACFacebookAudienceFriends: String
@available(OSX 10.8, *)
let ACFacebookAudienceOnlyMe: String
@available(OSX 10.9, *)
let ACLinkedInAppIdKey: String
@available(OSX 10.9, *)
let ACLinkedInPermissionsKey: String
@available(OSX 10.9, *)
let ACTencentWeiboAppIdKey: String
@available(OSX 10.8, *)
class ACAccountType : NSObject {
  var accountTypeDescription: String! { get }
  var identifier: String! { get }
  var accessGranted: Bool { get }
  init()
}
@available(OSX 10.8, *)
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
