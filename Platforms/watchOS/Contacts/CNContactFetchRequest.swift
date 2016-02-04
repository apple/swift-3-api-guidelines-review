
@available(watchOS 2.0, *)
class CNContactFetchRequest : Object {
  init(keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: Predicate?
  var keysToFetch: [CNKeyDescriptor]
  var mutableObjects: Bool
  var unifyResults: Bool
  var sortOrder: CNContactSortOrder
  convenience init()
}
