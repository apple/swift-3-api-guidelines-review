
@available(OSX 10.11, *)
class CNContactsUserDefaults : NSObject {
  class func sharedDefaults() -> Self
  var sortOrder: CNContactSortOrder { get }
  var countryCode: String { get }
  init()
}
