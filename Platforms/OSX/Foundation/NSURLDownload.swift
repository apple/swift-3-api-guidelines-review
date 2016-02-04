
class NSURLDownload : NSObject {
  class func canResumeDownloadDecodedWithEncodingMIMEType(MIMEType: String) -> Bool
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(request: NSURLRequest, delegate: NSURLDownloadDelegate?)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData: NSData, delegate: NSURLDownloadDelegate?, path: String)
  func cancel()
  func setDestination(path: String, allowOverwrite: Bool)
  @NSCopying var request: NSURLRequest { get }
  @NSCopying var resumeData: NSData? { get }
  var deletesFileUponFailure: Bool
  init()
}
protocol NSURLDownloadDelegate : NSObjectProtocol {
  optional func downloadDidBegin(download: NSURLDownload)
  optional func download(download: NSURLDownload, willSendRequest request: NSURLRequest, redirectResponse: NSURLResponse?) -> NSURLRequest?
  optional func download(connection: NSURLDownload, canAuthenticateAgainstProtectionSpace protectionSpace: NSURLProtectionSpace) -> Bool
  optional func download(download: NSURLDownload, didReceiveAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  optional func download(download: NSURLDownload, didCancelAuthenticationChallenge challenge: NSURLAuthenticationChallenge)
  optional func downloadShouldUseCredentialStorage(download: NSURLDownload) -> Bool
  optional func download(download: NSURLDownload, didReceiveResponse response: NSURLResponse)
  optional func download(download: NSURLDownload, willResumeWithResponse response: NSURLResponse, fromByte startingByte: Int64)
  optional func download(download: NSURLDownload, didReceiveDataOfLength length: Int)
  optional func download(download: NSURLDownload, shouldDecodeSourceDataOfMIMEType encodingType: String) -> Bool
  optional func download(download: NSURLDownload, decideDestinationWithSuggestedFilename filename: String)
  optional func download(download: NSURLDownload, didCreateDestination path: String)
  optional func downloadDidFinish(download: NSURLDownload)
  optional func download(download: NSURLDownload, didFailWithError error: NSError)
}
