
class URLDownload : Object {
  class func canResumeDownloadDecodedWithEncodingMIMEType(MIMEType: String) -> Bool
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(request: URLRequest, delegate: URLDownloadDelegate?)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData: Data, delegate: URLDownloadDelegate?, path: String)
  func cancel()
  func setDestination(path: String, allowOverwrite: Bool)
  @NSCopying var request: URLRequest { get }
  @NSCopying var resumeData: Data? { get }
  var deletesFileUponFailure: Bool
  init()
}
protocol URLDownloadDelegate : ObjectProtocol {
  optional func downloadDidBegin(download: URLDownload)
  optional func download(download: URLDownload, willSend request: URLRequest, redirectResponse: URLResponse?) -> URLRequest?
  optional func download(connection: URLDownload, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  optional func download(download: URLDownload, didReceive challenge: URLAuthenticationChallenge)
  optional func download(download: URLDownload, didCancel challenge: URLAuthenticationChallenge)
  optional func downloadShouldUseCredentialStorage(download: URLDownload) -> Bool
  optional func download(download: URLDownload, didReceive response: URLResponse)
  optional func download(download: URLDownload, willResumeWith response: URLResponse, fromByte startingByte: Int64)
  optional func download(download: URLDownload, didReceiveDataOfLength length: Int)
  optional func download(download: URLDownload, shouldDecodeSourceDataOfMIMEType encodingType: String) -> Bool
  optional func download(download: URLDownload, decideDestinationWithSuggestedFilename filename: String)
  optional func download(download: URLDownload, didCreateDestination path: String)
  optional func downloadDidFinish(download: URLDownload)
  optional func download(download: URLDownload, didFailWithError error: Error)
}
