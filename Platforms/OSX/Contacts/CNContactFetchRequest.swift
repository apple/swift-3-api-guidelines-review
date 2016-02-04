
@available(OSX 10.11, *)
class CNContactFetchRequest : Object {
  init(keysToFetch: [CNKeyDescriptor])
  @NSCopying var predicate: Predicate?
  var keysToFetch: [CNKeyDescriptor]
  var mutableObjects: Bool
  var unifyResults: Bool
  var sortOrder: CNContactSortOrder
  convenience init()
}
