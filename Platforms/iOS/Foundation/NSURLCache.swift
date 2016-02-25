
enum NSURLCacheStoragePolicy : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Allowed
  case AllowedInMemoryOnly
  case NotAllowed
}
class NSCachedURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(response response: NSURLResponse, data data: NSData)
  init(response response: NSURLResponse, data data: NSData, userInfo userInfo: [NSObject : AnyObject]?, storagePolicy storagePolicy: NSURLCacheStoragePolicy)
  @NSCopying var response: NSURLResponse { get }
  @NSCopying var data: NSData { get }
  var userInfo: [NSObject : AnyObject]? { get }
  var storagePolicy: NSURLCacheStoragePolicy { get }
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
class NSURLCache : NSObject {
  class func sharedURLCache() -> NSURLCache
  class func setSharedURLCache(_ cache: NSURLCache)
  init(memoryCapacity memoryCapacity: Int, diskCapacity diskCapacity: Int, diskPath path: String?)
  func cachedResponseForRequest(_ request: NSURLRequest) -> NSCachedURLResponse?
  func storeCachedResponse(_ cachedResponse: NSCachedURLResponse, forRequest request: NSURLRequest)
  func removeCachedResponseForRequest(_ request: NSURLRequest)
  func removeAllCachedResponses()
  @available(iOS 8.0, *)
  func removeCachedResponsesSinceDate(_ date: NSDate)
  var memoryCapacity: Int
  var diskCapacity: Int
  var currentMemoryUsage: Int { get }
  var currentDiskUsage: Int { get }
}
extension NSURLCache {
  @available(iOS 8.0, *)
  func storeCachedResponse(_ cachedResponse: NSCachedURLResponse, forDataTask dataTask: NSURLSessionDataTask)
  @available(iOS 8.0, *)
  func getCachedResponseForDataTask(_ dataTask: NSURLSessionDataTask, completionHandler completionHandler: (NSCachedURLResponse?) -> Void)
  @available(iOS 8.0, *)
  func removeCachedResponseForDataTask(_ dataTask: NSURLSessionDataTask)
}
