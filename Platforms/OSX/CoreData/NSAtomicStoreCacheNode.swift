
@available(OSX 10.5, *)
class NSAtomicStoreCacheNode : Object {
  init(objectID moid: NSManagedObjectID)
  var objectID: NSManagedObjectID { get }
  var propertyCache: MutableDictionary?
  func valueFor(key key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  init()
}
