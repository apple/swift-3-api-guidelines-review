
@available(iOS 9.0, *)
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contacts
}
@available(iOS 9.0, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(iOS 9.0, *)
class CNContactStore : Object {
  class func authorizationStatus(forEntityType entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccess(forEntityType entityType: CNEntityType, completionHandler: (Bool, Error?) -> Void)
  func unifiedContacts(matching predicate: Predicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContact(withIdentifier identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContactsWith(fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groups(matching predicate: Predicate?) throws -> [CNGroup]
  func containers(matching predicate: Predicate?) throws -> [CNContainer]
  func execute(saveRequest: CNSaveRequest) throws
  func defaultContainerIdentifier() -> String
  init()
}
@available(iOS 9.0, *)
let CNContactStoreDidChangeNotification: String
