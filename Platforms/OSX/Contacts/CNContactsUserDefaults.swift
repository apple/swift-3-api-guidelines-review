
@available(OSX 10.11, *)
class CNContactsUserDefaults : Object {
  class func shared() -> Self
  var sortOrder: CNContactSortOrder { get }
  var countryCode: String { get }
  init()
}
