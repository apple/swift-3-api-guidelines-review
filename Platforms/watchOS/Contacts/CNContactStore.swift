
@available(watchOS 2.0, *)
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contacts
}
@available(watchOS 2.0, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(watchOS 2.0, *)
class CNContactStore : Object {
  class func authorizationStatus(for entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccess(for entityType: CNEntityType, completionHandler: (Bool, Error?) -> Void)
  func unifiedContacts(matching predicate: Predicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContact(withIdentifier identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContacts(with fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groups(matching predicate: Predicate?) throws -> [CNGroup]
  func containers(matching predicate: Predicate?) throws -> [CNContainer]
  func defaultContainerIdentifier() -> String
  init()
}
@available(watchOS 2.0, *)
let CNContactStoreDidChangeNotification: String
