
class NSURLConnection : NSObject {
  @available(watchOS 2.0, *)
  @NSCopying var originalRequest: NSURLRequest { get }
  @available(watchOS 2.0, *)
  @NSCopying var currentRequest: NSURLRequest { get }
  @available(watchOS 2.0, *)
  func start()
  func cancel()
  @available(watchOS 2.0, *)
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  @available(watchOS 2.0, *)
  func unscheduleFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  @available(watchOS 2.0, *)
  func setDelegateQueue(queue: NSOperationQueue?)
  class func canHandleRequest(request: NSURLRequest) -> Bool
  init()
}
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(connection: NSURLConnection, didFailWithError error: NSError)
  optional func connectionShouldUseCredentialStorage(connection: NSURLConnection) -> Bool
  optional func connection(connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
}
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(connection: NSURLConnection, willSendRequest request: NSURLRequest, redirectResponse response: NSURLResponse?) -> NSURLRequest?
  optional func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse)
  optional func connection(connection: NSURLConnection, didReceiveData data: NSData)
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
}
extension NSURLConnection {
}
