
@available(iOS 8.0, *)
let CKOwnerDefaultName: String
@available(iOS 8.0, *)
class CKContainer : NSObject {
  class func defaultContainer() -> CKContainer
  /*not inherited*/ init(identifier containerIdentifier: String)
  var containerIdentifier: String? { get }
  func addOperation(_ operation: CKOperation)
}
extension CKContainer {
  var privateCloudDatabase: CKDatabase { get }
  var publicCloudDatabase: CKDatabase { get }
}
@available(iOS 8.0, *)
enum CKAccountStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case CouldNotDetermine
  case Available
  case Restricted
  case NoAccount
}
@available(iOS 9.0, *)
let CKAccountChangedNotification: String
extension CKContainer {
  func accountStatusWithCompletionHandler(_ completionHandler: (CKAccountStatus, NSError?) -> Void)
}
@available(iOS 8.0, *)
struct CKApplicationPermissions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var UserDiscoverability: CKApplicationPermissions { get }
}
@available(iOS 8.0, *)
enum CKApplicationPermissionStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case InitialState
  case CouldNotComplete
  case Denied
  case Granted
}
typealias CKApplicationPermissionBlock = (CKApplicationPermissionStatus, NSError?) -> Void
extension CKContainer {
  func statusForApplicationPermission(_ applicationPermission: CKApplicationPermissions, completionHandler completionHandler: CKApplicationPermissionBlock)
  func requestApplicationPermission(_ applicationPermission: CKApplicationPermissions, completionHandler completionHandler: CKApplicationPermissionBlock)
}
extension CKContainer {
  func fetchUserRecordIDWithCompletionHandler(_ completionHandler: (CKRecordID?, NSError?) -> Void)
  func discoverAllContactUserInfosWithCompletionHandler(_ completionHandler: ([CKDiscoveredUserInfo]?, NSError?) -> Void)
  func discoverUserInfoWithEmailAddress(_ email: String, completionHandler completionHandler: (CKDiscoveredUserInfo?, NSError?) -> Void)
  func discoverUserInfoWithUserRecordID(_ userRecordID: CKRecordID, completionHandler completionHandler: (CKDiscoveredUserInfo?, NSError?) -> Void)
}
