
@available(watchOS 2.0, *)
class CNContactFetchRequest : NSObject {
  init(keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: NSPredicate?
  var keysToFetch: [CNKeyDescriptor]
  var mutableObjects: Bool
  var unifyResults: Bool
  var sortOrder: CNContactSortOrder
  convenience init()
}
