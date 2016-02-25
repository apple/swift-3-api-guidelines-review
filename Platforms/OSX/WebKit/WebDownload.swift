
class WebDownload : NSURLDownload {
}
protocol WebDownloadDelegate : NSURLDownloadDelegate {
  optional func downloadWindow(forAuthenticationSheet download: WebDownload!) -> NSWindow!
}
