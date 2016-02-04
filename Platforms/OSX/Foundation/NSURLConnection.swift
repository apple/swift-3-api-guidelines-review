
class NSURLConnection : NSObject {
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?, startImmediately: Bool)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession (see NSURLSession.h)")
  init?(request: NSURLRequest, delegate: AnyObject?)
  @available(OSX 10.8, *)
  @NSCopying var originalRequest: NSURLRequest { get }
  @available(OSX 10.8, *)
  @NSCopying var currentRequest: NSURLRequest { get }
  @available(OSX 10.5, *)
  func start()
  func cancel()
  @available(OSX 10.5, *)
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  @available(OSX 10.5, *)
  func unscheduleFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  @available(OSX 10.7, *)
  func setDelegateQueue(queue: NSOperationQueue?)
  class func canHandleRequest(request: NSURLRequest) -> Bool
  init()
}
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(connection: NSURLConnection, didFailWithError error: NSError)
  optional func connectionShouldUseCredentialStorage(connection: NSURLConnection) -> Bool
  optional func connection(connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(connection: NSURLConnection, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  @available(OSX, introduced=10.2, deprecated=10.10, message="Use -connection:willSendRequestForAuthenticationChallenge: instead.")
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
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(request: NSURLRequest, returningResponse response: AutoreleasingUnsafeMutablePointer<NSURLResponse?>) throws -> NSData
}
extension NSURLConnection {
  @available(OSX, introduced=10.7, deprecated=10.11, message="Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(request: NSURLRequest, queue: NSOperationQueue, completionHandler handler: (NSURLResponse?, NSData?, NSError?) -> Void)
}
