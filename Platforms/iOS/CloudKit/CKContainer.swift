
@available(iOS 8.0, *)
let CKOwnerDefaultName: String
@available(iOS 8.0, *)
class CKContainer : Object {
  class func defaultContainer() -> CKContainer
  /*not inherited*/ init(identifier containerIdentifier: String)
  var containerIdentifier: String? { get }
  func add(operation: CKOperation)
}
extension CKContainer {
  var privateCloudDatabase: CKDatabase { get }
  var publicCloudDatabase: CKDatabase { get }
}
@available(iOS 8.0, *)
enum CKAccountStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case couldNotDetermine
  case available
  case restricted
  case noAccount
}
@available(iOS 9.0, *)
let CKAccountChangedNotification: String
extension CKContainer {
  func accountStatus(completionHandler completionHandler: (CKAccountStatus, Error?) -> Void)
}
@available(iOS 8.0, *)
struct CKApplicationPermissions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var userDiscoverability: CKApplicationPermissions { get }
}
@available(iOS 8.0, *)
enum CKApplicationPermissionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case initialState
  case couldNotComplete
  case denied
  case granted
}
typealias CKApplicationPermissionBlock = (CKApplicationPermissionStatus, Error?) -> Void
extension CKContainer {
  func status(forApplicationPermission applicationPermission: CKApplicationPermissions, completionHandler: CKApplicationPermissionBlock)
  func requestApplicationPermission(applicationPermission: CKApplicationPermissions, completionHandler: CKApplicationPermissionBlock)
}
extension CKContainer {
  func fetchUserRecordID(completionHandler completionHandler: (CKRecordID?, Error?) -> Void)
  func discoverAllContactUserInfos(completionHandler completionHandler: ([CKDiscoveredUserInfo]?, Error?) -> Void)
  func discoverUserInfo(emailAddress email: String, completionHandler: (CKDiscoveredUserInfo?, Error?) -> Void)
  func discoverUserInfoWithUserRecordID(userRecordID: CKRecordID, completionHandler: (CKDiscoveredUserInfo?, Error?) -> Void)
}
