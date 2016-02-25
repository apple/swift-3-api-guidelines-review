
@available(OSX 10.11, *)
enum CNEntityType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Contacts
}
@available(OSX 10.11, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(OSX 10.11, *)
class CNContactStore : NSObject {
  class func authorizationStatusForEntityType(_ entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccessForEntityType(_ entityType: CNEntityType, completionHandler completionHandler: (Bool, NSError?) -> Void)
  func unifiedContactsMatchingPredicate(_ predicate: NSPredicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContactWithIdentifier(_ identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  @available(OSX 10.11, *)
  func unifiedMeContactWithKeysToFetch(_ keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContactsWithFetchRequest(_ fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groupsMatchingPredicate(_ predicate: NSPredicate?) throws -> [CNGroup]
  func containersMatchingPredicate(_ predicate: NSPredicate?) throws -> [CNContainer]
  func executeSaveRequest(_ saveRequest: CNSaveRequest) throws
  func defaultContainerIdentifier() -> String
}
@available(OSX 10.11, *)
let CNContactStoreDidChangeNotification: String
