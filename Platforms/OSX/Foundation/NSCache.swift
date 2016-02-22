
@available(OSX 10.6, *)
class NSCache : NSObject {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged NSCacheDelegate?
  func object(for key: AnyObject) -> AnyObject?
  func setObject(obj: AnyObject, for key: AnyObject)
  func setObject(obj: AnyObject, for key: AnyObject, cost g: Int)
  func removeObject(for key: AnyObject)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
  init()
}
protocol NSCacheDelegate : NSObjectProtocol {
  @available(OSX 10.6, *)
  optional func cache(cache: NSCache, willEvictObject obj: AnyObject)
}
