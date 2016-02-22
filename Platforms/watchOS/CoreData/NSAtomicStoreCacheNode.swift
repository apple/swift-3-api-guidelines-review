
@available(watchOS 2.0, *)
class NSAtomicStoreCacheNode : NSObject {
  init(objectID moid: NSManagedObjectID)
  var objectID: NSManagedObjectID { get }
  var propertyCache: NSMutableDictionary?
  func value(forKey key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  init()
}
