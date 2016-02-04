
class WebDownload : NSURLDownload {
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(request: NSURLRequest, delegate: NSURLDownloadDelegate?)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData: NSData, delegate: NSURLDownloadDelegate?, path: String)
  init()
}
protocol WebDownloadDelegate : NSURLDownloadDelegate {
  optional func downloadWindowForAuthenticationSheet(download: WebDownload!) -> NSWindow!
}
