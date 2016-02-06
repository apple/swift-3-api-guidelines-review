
@available(tvOS 3.0, *)
class NSAtomicStoreCacheNode : Object {
  init(objectID moid: NSManagedObjectID)
  var objectID: NSManagedObjectID { get }
  var propertyCache: MutableDictionary?
  func valueFor(key key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  init()
}
