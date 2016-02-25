
class WebDownload : NSURLDownload {
}
protocol WebDownloadDelegate : NSURLDownloadDelegate {
  optional func downloadWindowForAuthenticationSheet(_ download: WebDownload!) -> NSWindow!
}
