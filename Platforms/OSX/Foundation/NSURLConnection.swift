
class URLConnection : Object {
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: URLRequest, delegate: AnyObject?, startImmediately: Bool)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: URLRequest, delegate: AnyObject?)
  @available(OSX 10.8, *)
  @NSCopying var originalRequest: URLRequest { get }
  @available(OSX 10.8, *)
  @NSCopying var currentRequest: URLRequest { get }
  @available(OSX 10.5, *)
  func start()
  func cancel()
  @available(OSX 10.5, *)
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  @available(OSX 10.5, *)
  func unscheduleFrom(aRunLoop: RunLoop, forMode mode: String)
  @available(OSX 10.7, *)
  func setDelegateQueue(queue: OperationQueue?)
  class func canHandle(request: URLRequest) -> Bool
  init()
}
protocol URLConnectionDelegate : ObjectProtocol {
  optional func connection(connection: URLConnection, didFailWithError error: Error)
  optional func connectionShouldUseCredentialStorage(connection: URLConnection) -> Bool
  optional func connection(connection: URLConnection, willSendRequestFor challenge: URLAuthenticationChallenge)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: URLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: URLConnection, didReceive challenge: URLAuthenticationChallenge)
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
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
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(request: URLRequest, returning response: AutoreleasingUnsafeMutablePointer<URLResponse?>) throws -> Data
}
extension URLConnection {
  @available(OSX, introduced=10.7, deprecated=10.11, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(request: URLRequest, queue: OperationQueue, completionHandler handler: (URLResponse?, Data?, Error?) -> Void)
}
