
class NSURLConnection : NSObject {
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?, startImmediately: Bool)
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?)
  @available(tvOS 5.0, *)
  @NSCopying var originalRequest: NSURLRequest { get }
  @available(tvOS 5.0, *)
  @NSCopying var currentRequest: NSURLRequest { get }
  @available(tvOS 2.0, *)
  func start()
  func cancel()
  @available(tvOS 2.0, *)
  func schedule(in aRunLoop: NSRunLoop, forMode mode: String)
  @available(tvOS 2.0, *)
  func unschedule(from aRunLoop: NSRunLoop, forMode mode: String)
  @available(tvOS 5.0, *)
  func setDelegateQueue(queue: NSOperationQueue?)
  class func canHandle(request: NSURLRequest) -> Bool
  init()
}
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(connection: NSURLConnection, didFailWithError error: NSError)
  optional func connectionShouldUseCredentialStorage(connection: NSURLConnection) -> Bool
  optional func connection(connection: NSURLConnection, willSendRequestFor challenge: NSURLAuthenticationChallenge)
  @available(tvOS, introduced=3.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didReceive challenge: NSURLAuthenticationChallenge)
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didCancel challenge: NSURLAuthenticationChallenge)
}
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, willSend request: NSURLRequest, redirectResponse response: NSURLResponse?) -> NSURLRequest?
  optional func connection(connection: NSURLConnection, didReceive response: NSURLResponse)
  optional func connection(connection: NSURLConnection, didReceive data: NSData)
  optional func connection(connection: NSURLConnection, needNewBodyStream request: NSURLRequest) -> NSInputStream?
  optional func connection(connection: NSURLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(connection: NSURLConnection, willCacheResponse cachedResponse: NSCachedURLResponse) -> NSCachedURLResponse?
  optional func connectionDidFinishLoading(connection: NSURLConnection)
}
protocol NSURLConnectionDownloadDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(connection: NSURLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(connection: NSURLConnection, destinationURL: NSURL)
}
extension NSURLConnection {
  @available(tvOS, introduced=2.0, deprecated=9.0, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(request: NSURLRequest, returning response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>) throws -> NSData
}
extension NSURLConnection {
  @available(tvOS, introduced=5.0, deprecated=9.0, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(request: NSURLRequest, queue: NSOperationQueue, completionHandler handler: (NSURLResponse?, NSData?, NSError?) -> Void)
}
