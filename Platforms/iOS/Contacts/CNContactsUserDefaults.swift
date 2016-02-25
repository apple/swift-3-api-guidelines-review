
@available(iOS 9.0, *)
class CNContactsUserDefaults : NSObject {
  class func sharedDefaults() -> Self
  var sortOrder: CNContactSortOrder { get }
  var countryCode: String { get }
}
