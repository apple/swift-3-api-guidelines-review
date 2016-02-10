
@available(iOS 4.0, *)
class Cache : Object {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged CacheDelegate?
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
protocol CacheDelegate : ObjectProtocol {
  @available(iOS 4.0, *)
  optional func cache(cache: Cache, willEvictObject obj: AnyObject)
}
