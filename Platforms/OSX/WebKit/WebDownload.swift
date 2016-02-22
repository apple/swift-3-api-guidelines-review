
class WebDownload : NSURLDownload {
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(request request: NSURLRequest, delegate delegate: NSURLDownloadDelegate?)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData resumeData: NSData, delegate delegate: NSURLDownloadDelegate?, path path: String)
  init()
}
protocol WebDownloadDelegate : NSURLDownloadDelegate {
  optional func downloadWindow(forAuthenticationSheet download: WebDownload!) -> NSWindow!
}
