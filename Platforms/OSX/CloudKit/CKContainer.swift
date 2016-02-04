
@available(OSX 10.10, *)
let CKOwnerDefaultName: String
@available(OSX 10.10, *)
class CKContainer : NSObject {
  class func defaultContainer() -> CKContainer
  /*not inherited*/ init(identifier containerIdentifier: String)
  var containerIdentifier: String? { get }
  func addOperation(operation: CKOperation)
}
extension CKContainer {
  var privateCloudDatabase: CKDatabase { get }
  var publicCloudDatabase: CKDatabase { get }
}
@available(OSX 10.10, *)
enum CKAccountStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CouldNotDetermine
  case Available
  case Restricted
  case NoAccount
}
@available(OSX 10.11, *)
let CKAccountChangedNotification: String
extension CKContainer {
  func accountStatusWithCompletionHandler(completionHandler: (CKAccountStatus, NSError?) -> Void)
}
@available(OSX 10.10, *)
struct CKApplicationPermissions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UserDiscoverability: CKApplicationPermissions { get }
}
@available(OSX 10.10, *)
enum CKApplicationPermissionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InitialState
  case CouldNotComplete
  case Denied
  case Granted
}
typealias CKApplicationPermissionBlock = (CKApplicationPermissionStatus, NSError?) -> Void
extension CKContainer {
  func statusForApplicationPermission(applicationPermission: CKApplicationPermissions, completionHandler: CKApplicationPermissionBlock)
  func requestApplicationPermission(applicationPermission: CKApplicationPermissions, completionHandler: CKApplicationPermissionBlock)
}
extension CKContainer {
  func fetchUserRecordIDWithCompletionHandler(completionHandler: (CKRecordID?, NSError?) -> Void)
  func discoverAllContactUserInfosWithCompletionHandler(completionHandler: ([CKDiscoveredUserInfo]?, NSError?) -> Void)
  func discoverUserInfoWithEmailAddress(email: String, completionHandler: (CKDiscoveredUserInfo?, NSError?) -> Void)
  func discoverUserInfoWithUserRecordID(userRecordID: CKRecordID, completionHandler: (CKDiscoveredUserInfo?, NSError?) -> Void)
}
