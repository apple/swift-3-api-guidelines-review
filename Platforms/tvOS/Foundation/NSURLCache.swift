
enum URLCacheStoragePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case allowed
  case allowedInMemoryOnly
  case notAllowed
}
class CachedURLResponse : Object, SecureCoding, Copying {
  init(response: URLResponse, data: Data)
  init(response: URLResponse, data: Data, userInfo: [Object : AnyObject]? = [:], storagePolicy: URLCacheStoragePolicy)
  @NSCopying var response: URLResponse { get }
  @NSCopying var data: Data { get }
  var userInfo: [Object : AnyObject]? { get }
  var storagePolicy: URLCacheStoragePolicy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
}
class URLCache : Object {
  class func shared() -> URLCache
  class func setSharedURLCache(cache: URLCache)
  init(memoryCapacity: Int, diskCapacity: Int, diskPath path: String?)
  func cachedResponse(for request: URLRequest) -> CachedURLResponse?
  func storeCachedResponse(cachedResponse: CachedURLResponse, for request: URLRequest)
  func removeCachedResponse(for request: URLRequest)
  func removeAllCachedResponses()
  @available(tvOS 8.0, *)
  func removeCachedResponses(since date: Date)
  var memoryCapacity: Int
  var diskCapacity: Int
  var currentMemoryUsage: Int { get }
  var currentDiskUsage: Int { get }
  init()
}
extension URLCache {
  @available(tvOS 8.0, *)
  func storeCachedResponse(cachedResponse: CachedURLResponse, for dataTask: URLSessionDataTask)
  @available(tvOS 8.0, *)
  func getCachedResponse(for dataTask: URLSessionDataTask, completionHandler: (CachedURLResponse?) -> Void)
  @available(tvOS 8.0, *)
  func removeCachedResponse(for dataTask: URLSessionDataTask)
}
