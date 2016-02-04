
class WebDownload : URLDownload {
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(request: URLRequest, delegate: URLDownloadDelegate?)
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData: Data, delegate: URLDownloadDelegate?, path: String)
  init()
}
protocol WebDownloadDelegate : URLDownloadDelegate {
  optional func downloadWindowForAuthenticationSheet(download: WebDownload!) -> NSWindow!
}
