
enum NSURLCacheStoragePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Allowed
  case AllowedInMemoryOnly
  case NotAllowed
}
class NSCachedURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(response: NSURLResponse, data: NSData)
  init(response: NSURLResponse, data: NSData, userInfo: [NSObject : AnyObject]?, storagePolicy: NSURLCacheStoragePolicy)
  @NSCopying var response: NSURLResponse { get }
  @NSCopying var data: NSData { get }
  var userInfo: [NSObject : AnyObject]? { get }
  var storagePolicy: NSURLCacheStoragePolicy { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSURLCache : NSObject {
  class func sharedURLCache() -> NSURLCache
  class func setSharedURLCache(cache: NSURLCache)
  init(memoryCapacity: Int, diskCapacity: Int, diskPath path: String?)
  func cachedResponseForRequest(request: NSURLRequest) -> NSCachedURLResponse?
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, forRequest request: NSURLRequest)
  func removeCachedResponseForRequest(request: NSURLRequest)
  func removeAllCachedResponses()
  @available(iOS 8.0, *)
  func removeCachedResponsesSinceDate(date: NSDate)
  var memoryCapacity: Int
  var diskCapacity: Int
  var currentMemoryUsage: Int { get }
  var currentDiskUsage: Int { get }
  init()
}
extension NSURLCache {
  @available(iOS 8.0, *)
  func storeCachedResponse(cachedResponse: NSCachedURLResponse, forDataTask dataTask: NSURLSessionDataTask)
  @available(iOS 8.0, *)
  func getCachedResponseForDataTask(dataTask: NSURLSessionDataTask, completionHandler: (NSCachedURLResponse?) -> Void)
  @available(iOS 8.0, *)
  func removeCachedResponseForDataTask(dataTask: NSURLSessionDataTask)
}
