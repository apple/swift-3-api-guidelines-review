
enum ACAccountCredentialRenewResult : Int {
  init?(rawValue rawValue: Int)
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
  func accountWithIdentifier(_ identifier: String!) -> ACAccount!
  func accountTypeWithAccountTypeIdentifier(_ typeIdentifier: String!) -> ACAccountType!
  func accountsWithAccountType(_ accountType: ACAccountType!) -> [AnyObject]!
  func saveAccount(_ account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreSaveCompletionHandler!)
  func requestAccessToAccountsWithType(_ accountType: ACAccountType!, options options: [NSObject : AnyObject]!, completion completion: ACAccountStoreRequestAccessCompletionHandler!)
  func renewCredentialsForAccount(_ account: ACAccount!, completion completionHandler: ACAccountStoreCredentialRenewalHandler!)
  func removeAccount(_ account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreRemoveCompletionHandler!)
}
@available(OSX 10.8, *)
let ACAccountStoreDidChangeNotification: String
