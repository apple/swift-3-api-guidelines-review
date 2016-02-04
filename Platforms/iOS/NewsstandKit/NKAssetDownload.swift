
@available(iOS 5.0, *)
class NKAssetDownload : NSObject {
  weak var issue: @sil_weak NKIssue? { get }
  var identifier: String { get }
  var userInfo: [NSObject : AnyObject]?
  @NSCopying var URLRequest: NSURLRequest { get }
  func downloadWithDelegate(delegate: NSURLConnectionDownloadDelegate) -> NSURLConnection
  init()
}
