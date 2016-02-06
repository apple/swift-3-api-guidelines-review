
protocol URLProtocolClient : ObjectProtocol {
  func urlProtocol(protocol: URLProtocol, wasRedirectedTo request: URLRequest, redirectResponse: URLResponse)
  func urlProtocol(protocol: URLProtocol, cachedResponseIsValid cachedResponse: CachedURLResponse)
  func urlProtocol(protocol: URLProtocol, didReceive response: URLResponse, cacheStoragePolicy policy: URLCacheStoragePolicy)
  func urlProtocol(protocol: URLProtocol, didLoad data: Data)
  func urlProtocolDidFinishLoading(protocol: URLProtocol)
  func urlProtocol(protocol: URLProtocol, didFailWithError error: Error)
  func urlProtocol(protocol: URLProtocol, didReceive challenge: URLAuthenticationChallenge)
  func urlProtocol(protocol: URLProtocol, didCancel challenge: URLAuthenticationChallenge)
}
class URLProtocol : Object {
  init(request: URLRequest, cachedResponse: CachedURLResponse?, client: URLProtocolClient?)
  var client: URLProtocolClient? { get }
  @NSCopying var request: URLRequest { get }
  @NSCopying var cachedResponse: CachedURLResponse? { get }
  class func canInitWith(request: URLRequest) -> Bool
  class func canonicalRequestFor(request: URLRequest) -> URLRequest
  class func requestIsCacheEquivalent(a: URLRequest, to b: URLRequest) -> Bool
  func startLoading()
  func stopLoading()
  class func propertyFor(key key: String, in request: URLRequest) -> AnyObject?
  class func setProperty(value: AnyObject, forKey key: String, in request: MutableURLRequest)
  class func removePropertyFor(key key: String, in request: MutableURLRequest)
  class func registerClass(protocolClass: AnyClass) -> Bool
  class func unregisterClass(protocolClass: AnyClass)
  convenience init()
}
extension URLProtocol {
  @available(watchOS 2.0, *)
  class func canInitWith(task: URLSessionTask) -> Bool
  @available(watchOS 2.0, *)
  convenience init(task: URLSessionTask, cachedResponse: CachedURLResponse?, client: URLProtocolClient?)
  @available(watchOS 2.0, *)
  @NSCopying var task: URLSessionTask? { get }
}
