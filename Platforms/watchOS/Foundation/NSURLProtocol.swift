
protocol NSURLProtocolClient : NSObjectProtocol {
  func URLProtocol(protocol: NSURLProtocol, wasRedirectedToRequest request: NSURLRequest, redirectResponse: NSURLResponse)
  func URLProtocol(protocol: NSURLProtocol, cachedResponseIsValid cachedResponse: NSCachedURLResponse)
  func URLProtocol(protocol: NSURLProtocol, didReceiveResponse response: NSURLResponse, cacheStoragePolicy policy: NSURLCacheStoragePolicy)
  func URLProtocol(protocol: NSURLProtocol, didLoadData data: NSData)
  func URLProtocolDidFinishLoading(protocol: NSURLProtocol)
  func URLProtocol(protocol: NSURLProtocol, didFailWithError error: NSError)
  func URLProtocol(protocol: NSURLProtocol, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  func URLProtocol(protocol: NSURLProtocol, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
}
class NSURLProtocol : NSObject {
  init(request: NSURLRequest, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)
  var client: NSURLProtocolClient? { get }
  @NSCopying var request: NSURLRequest { get }
  @NSCopying var cachedResponse: NSCachedURLResponse? { get }
  class func canInitWithRequest(request: NSURLRequest) -> Bool
  class func canonicalRequestForRequest(request: NSURLRequest) -> NSURLRequest
  class func requestIsCacheEquivalent(a: NSURLRequest, toRequest b: NSURLRequest) -> Bool
  func startLoading()
  func stopLoading()
  class func propertyForKey(key: String, inRequest request: NSURLRequest) -> AnyObject?
  class func setProperty(value: AnyObject, forKey key: String, inRequest request: NSMutableURLRequest)
  class func removePropertyForKey(key: String, inRequest request: NSMutableURLRequest)
  class func registerClass(protocolClass: AnyClass) -> Bool
  class func unregisterClass(protocolClass: AnyClass)
  convenience init()
}
extension NSURLProtocol {
  @available(watchOS 2.0, *)
  class func canInitWithTask(task: NSURLSessionTask) -> Bool
  @available(watchOS 2.0, *)
  convenience init(task: NSURLSessionTask, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)
  @available(watchOS 2.0, *)
  @NSCopying var task: NSURLSessionTask? { get }
}
