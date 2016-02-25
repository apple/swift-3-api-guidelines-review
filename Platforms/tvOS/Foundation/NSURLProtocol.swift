
protocol NSURLProtocolClient : NSObjectProtocol {
  func URLProtocol(_ protocol: NSURLProtocol, wasRedirectedToRequest request: NSURLRequest, redirectResponse redirectResponse: NSURLResponse)
  func URLProtocol(_ protocol: NSURLProtocol, cachedResponseIsValid cachedResponse: NSCachedURLResponse)
  func URLProtocol(_ protocol: NSURLProtocol, didReceiveResponse response: NSURLResponse, cacheStoragePolicy policy: NSURLCacheStoragePolicy)
  func URLProtocol(_ protocol: NSURLProtocol, didLoadData data: NSData)
  func URLProtocolDidFinishLoading(_ protocol: NSURLProtocol)
  func URLProtocol(_ protocol: NSURLProtocol, didFailWithError error: NSError)
  func URLProtocol(_ protocol: NSURLProtocol, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  func URLProtocol(_ protocol: NSURLProtocol, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
}
class NSURLProtocol : NSObject {
  init(request request: NSURLRequest, cachedResponse cachedResponse: NSCachedURLResponse?, client client: NSURLProtocolClient?)
  var client: NSURLProtocolClient? { get }
  @NSCopying var request: NSURLRequest { get }
  @NSCopying var cachedResponse: NSCachedURLResponse? { get }
  class func canInitWithRequest(_ request: NSURLRequest) -> Bool
  class func canonicalRequestForRequest(_ request: NSURLRequest) -> NSURLRequest
  class func requestIsCacheEquivalent(_ a: NSURLRequest, toRequest b: NSURLRequest) -> Bool
  func startLoading()
  func stopLoading()
  class func propertyForKey(_ key: String, inRequest request: NSURLRequest) -> AnyObject?
  class func setProperty(_ value: AnyObject, forKey key: String, inRequest request: NSMutableURLRequest)
  class func removePropertyForKey(_ key: String, inRequest request: NSMutableURLRequest)
  class func registerClass(_ protocolClass: AnyClass) -> Bool
  class func unregisterClass(_ protocolClass: AnyClass)
}
extension NSURLProtocol {
  @available(tvOS 8.0, *)
  class func canInitWithTask(_ task: NSURLSessionTask) -> Bool
  @available(tvOS 8.0, *)
  convenience init(task task: NSURLSessionTask, cachedResponse cachedResponse: NSCachedURLResponse?, client client: NSURLProtocolClient?)
  @available(tvOS 8.0, *)
  @NSCopying var task: NSURLSessionTask? { get }
}
