
@available(iOS 9.0, *)
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contacts
}
@available(iOS 9.0, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS 9.0, *)
class CNContactStore : NSObject {
  class func authorizationStatusForEntityType(entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccessForEntityType(entityType: CNEntityType, completionHandler: (Bool, NSError?) -> Void)
  func unifiedContactsMatchingPredicate(predicate: NSPredicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContactWithIdentifier(identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContactsWithFetchRequest(fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groupsMatchingPredicate(predicate: NSPredicate?) throws -> [CNGroup]
  func containersMatchingPredicate(predicate: NSPredicate?) throws -> [CNContainer]
  func executeSaveRequest(saveRequest: CNSaveRequest) throws
  func defaultContainerIdentifier() -> String
  init()
}
@available(iOS 9.0, *)
let CNContactStoreDidChangeNotification: String
