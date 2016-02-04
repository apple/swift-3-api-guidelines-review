
@available(watchOS 2.0, *)
class CNContactsUserDefaults : Object {
  class func shared() -> Self
  var sortOrder: CNContactSortOrder { get }
  var countryCode: String { get }
  init()
}
