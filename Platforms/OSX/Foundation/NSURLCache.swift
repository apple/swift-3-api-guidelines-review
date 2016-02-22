
enum NSURLCacheStoragePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case allowed
  case allowedInMemoryOnly
  case notAllowed
}
class NSCachedURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(response: NSURLResponse, data: NSData)
  init(response: NSURLResponse, data: NSData, userInfo: [NSObject : AnyObject]? = [:], storagePolicy: NSURLCacheStoragePolicy)
  @NSCopying var response: NSURLResponse { get }
  @NSCopying var data: NSData { get }
  var userInfo: [NSObject : AnyObject]? { get }
  var storagePolicy: NSURLCacheStoragePolicy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
class NSURLCache : NSObject {
  class func shared() -> NSURLCache
  class func setSharedURLCache(cache: NSURLCache)
  init(memoryCapacity: Int, diskCapacity: Int, diskPath path: String?)
  func cachedResponse(for request: NSURLRequest) -> NSCachedURLResponse?
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, for request: NSURLRequest)
  func removeCachedResponse(for request: NSURLRequest)
  func removeAllCachedResponses()
  @available(OSX 10.10, *)
  func removeCachedResponses(since date: NSDate)
  var memoryCapacity: Int
  var diskCapacity: Int
  var currentMemoryUsage: Int { get }
  var currentDiskUsage: Int { get }
  init()
}
extension NSURLCache {
  @available(OSX 10.10, *)
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, for dataTask: NSURLSessionDataTask)
  @available(OSX 10.10, *)
  func getCachedResponse(for dataTask: NSURLSessionDataTask, completionHandler: (NSCachedURLResponse?) -> Void)
  @available(OSX 10.10, *)
  func removeCachedResponse(for dataTask: NSURLSessionDataTask)
}
