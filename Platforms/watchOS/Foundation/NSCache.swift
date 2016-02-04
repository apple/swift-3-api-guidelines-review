
@available(watchOS 2.0, *)
class NSCache : NSObject {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged NSCacheDelegate?
  func objectForKey(key: AnyObject) -> AnyObject?
  func setObject(obj: AnyObject, forKey key: AnyObject)
  func setObject(obj: AnyObject, forKey key: AnyObject, cost g: Int)
  func removeObjectForKey(key: AnyObject)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
  init()
}
protocol NSCacheDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func cache(cache: NSCache, willEvictObject obj: AnyObject)
}
