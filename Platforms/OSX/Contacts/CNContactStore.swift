
@available(OSX 10.11, *)
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contacts
}
@available(OSX 10.11, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(OSX 10.11, *)
class CNContactStore : Object {
  class func authorizationStatus(for entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccess(for entityType: CNEntityType, completionHandler: (Bool, Error?) -> Void)
  func unifiedContacts(matching predicate: Predicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContact(withIdentifier identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  @available(OSX 10.11, *)
  func unifiedMeContactWithKeys(toFetch keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContacts(with fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groups(matching predicate: Predicate?) throws -> [CNGroup]
  func containers(matching predicate: Predicate?) throws -> [CNContainer]
  func execute(saveRequest: CNSaveRequest) throws
  func defaultContainerIdentifier() -> String
  init()
}
@available(OSX 10.11, *)
let CNContactStoreDidChangeNotification: String
