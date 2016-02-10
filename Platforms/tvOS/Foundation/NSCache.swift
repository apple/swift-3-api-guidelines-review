
@available(tvOS 4.0, *)
class Cache : Object {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged CacheDelegate?
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
protocol CacheDelegate : ObjectProtocol {
  @available(tvOS 4.0, *)
  optional func cache(cache: Cache, willEvictObject obj: AnyObject)
}
