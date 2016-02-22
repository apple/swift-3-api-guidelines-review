
@available(iOS 4.0, *)
class NSCache : NSObject {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged NSCacheDelegate?
  func object(forKey key: AnyObject) -> AnyObject?
  func setObject(obj: AnyObject, forKey key: AnyObject)
  func setObject(obj: AnyObject, forKey key: AnyObject, cost g: Int)
  func removeObject(forKey key: AnyObject)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
  init()
}
protocol NSCacheDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func cache(cache: NSCache, willEvictObject obj: AnyObject)
}
