
class URLConnection : Object {
  @available(watchOS 2.0, *)
  @NSCopying var originalRequest: URLRequest { get }
  @available(watchOS 2.0, *)
  @NSCopying var currentRequest: URLRequest { get }
  @available(watchOS 2.0, *)
  func start()
  func cancel()
  @available(watchOS 2.0, *)
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  @available(watchOS 2.0, *)
  func unscheduleFrom(aRunLoop: RunLoop, forMode mode: String)
  @available(watchOS 2.0, *)
  func setDelegateQueue(queue: OperationQueue?)
  class func canHandle(request: URLRequest) -> Bool
  init()
}
protocol URLConnectionDelegate : ObjectProtocol {
  optional func connection(connection: URLConnection, didFailWithError error: Error)
  optional func connectionShouldUseCredentialStorage(connection: URLConnection) -> Bool
  optional func connection(connection: URLConnection, willSendRequestFor challenge: URLAuthenticationChallenge)
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: URLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: URLConnection, didReceive challenge: URLAuthenticationChallenge)
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: URLConnection, didCancel challenge: URLAuthenticationChallenge)
}
protocol URLConnectionDataDelegate : URLConnectionDelegate {
  optional func connection(connection: URLConnection, willSend request: URLRequest, redirectResponse response: URLResponse?) -> URLRequest?
  optional func connection(connection: URLConnection, didReceive response: URLResponse)
  optional func connection(connection: URLConnection, didReceive data: Data)
  optional func connection(connection: URLConnection, needNewBodyStream request: URLRequest) -> InputStream?
  optional func connection(connection: URLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(connection: URLConnection, willCacheResponse cachedResponse: CachedURLResponse) -> CachedURLResponse?
  optional func connectionDidFinishLoading(connection: URLConnection)
}
protocol URLConnectionDownloadDelegate : URLConnectionDelegate {
  optional func connection(connection: URLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(connection: URLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(connection: URLConnection, destinationURL: URL)
}
extension URLConnection {
}
extension URLConnection {
}
