
@available(OSX 10.11, *)
class CNContactsUserDefaults : NSObject {
  class func shared() -> Self
  var sortOrder: CNContactSortOrder { get }
  var countryCode: String { get }
}
