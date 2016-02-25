
@available(OSX 10.6, *)
class NSCache : NSObject {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged NSCacheDelegate?
  func objectForKey(_ key: AnyObject) -> AnyObject?
  func setObject(_ obj: AnyObject, forKey key: AnyObject)
  func setObject(_ obj: AnyObject, forKey key: AnyObject, cost g: Int)
  func removeObjectForKey(_ key: AnyObject)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
}
protocol NSCacheDelegate : NSObjectProtocol {
  @available(OSX 10.6, *)
  optional func cache(_ cache: NSCache, willEvictObject obj: AnyObject)
}
