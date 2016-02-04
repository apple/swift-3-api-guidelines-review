
@available(OSX 10.11, *)
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contacts
}
@available(OSX 10.11, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(OSX 10.11, *)
class CNContactStore : Object {
  class func authorizationStatusFor(entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccessFor(entityType: CNEntityType, completionHandler: (Bool, Error?) -> Void)
  func unifiedContactsMatching(predicate: Predicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContactWithIdentifier(identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  @available(OSX 10.11, *)
  func unifiedMeContactWithKeysToFetch(keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContactsWith(fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groupsMatching(predicate: Predicate?) throws -> [CNGroup]
  func containersMatching(predicate: Predicate?) throws -> [CNContainer]
  func execute(saveRequest: CNSaveRequest) throws
  func defaultContainerIdentifier() -> String
  init()
}
@available(OSX 10.11, *)
let CNContactStoreDidChangeNotification: String
