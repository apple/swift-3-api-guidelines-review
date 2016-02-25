
@available(iOS 9.0, *)
class CNContactsUserDefaults : NSObject {
  class func shared() -> Self
  var sortOrder: CNContactSortOrder { get }
  var countryCode: String { get }
}
