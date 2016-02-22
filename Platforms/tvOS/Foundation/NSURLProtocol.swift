
protocol NSURLProtocolClient : NSObjectProtocol {
  func urlProtocol(protocol: NSURLProtocol, wasRedirectedTo request: NSURLRequest, redirectResponse: NSURLResponse)
  func urlProtocol(protocol: NSURLProtocol, cachedResponseIsValid cachedResponse: NSCachedURLResponse)
  func urlProtocol(protocol: NSURLProtocol, didReceive response: NSURLResponse, cacheStoragePolicy policy: NSURLCacheStoragePolicy)
  func urlProtocol(protocol: NSURLProtocol, didLoad data: NSData)
  func urlProtocolDidFinishLoading(protocol: NSURLProtocol)
  func urlProtocol(protocol: NSURLProtocol, didFailWithError error: NSError)
  func urlProtocol(protocol: NSURLProtocol, didReceive challenge: NSURLAuthenticationChallenge)
  func urlProtocol(protocol: NSURLProtocol, didCancel challenge: NSURLAuthenticationChallenge)
}
class NSURLProtocol : NSObject {
  init(request: NSURLRequest, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)
  var client: NSURLProtocolClient? { get }
  @NSCopying var request: NSURLRequest { get }
  @NSCopying var cachedResponse: NSCachedURLResponse? { get }
  class func canInit(with request: NSURLRequest) -> Bool
  class func canonicalRequest(for request: NSURLRequest) -> NSURLRequest
  class func requestIsCacheEquivalent(a: NSURLRequest, to b: NSURLRequest) -> Bool
  func startLoading()
  func stopLoading()
  class func property(forKey key: String, in request: NSURLRequest) -> AnyObject?
  class func setProperty(value: AnyObject, forKey key: String, in request: NSMutableURLRequest)
  class func removeProperty(forKey key: String, in request: NSMutableURLRequest)
  class func registerClass(protocolClass: AnyClass) -> Bool
  class func unregisterClass(protocolClass: AnyClass)
  convenience init()
}
extension NSURLProtocol {
  @available(tvOS 8.0, *)
  class func canInit(with task: NSURLSessionTask) -> Bool
  @available(tvOS 8.0, *)
  convenience init(task: NSURLSessionTask, cachedResponse: NSCachedURLResponse?, client: NSURLProtocolClient?)
  @available(tvOS 8.0, *)
  @NSCopying var task: NSURLSessionTask? { get }
}
