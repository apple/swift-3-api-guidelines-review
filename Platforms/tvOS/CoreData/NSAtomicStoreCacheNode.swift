
@available(tvOS 3.0, *)
class NSAtomicStoreCacheNode : NSObject {
  init(objectID moid: NSManagedObjectID)
  var objectID: NSManagedObjectID { get }
  var propertyCache: NSMutableDictionary?
  func valueForKey(key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  init()
}
