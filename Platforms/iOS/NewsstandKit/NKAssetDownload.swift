
@available(iOS 5.0, *)
class NKAssetDownload : Object {
  weak var issue: @sil_weak NKIssue? { get }
  var identifier: String { get }
  var userInfo: [Object : AnyObject]?
  @NSCopying var urlRequest: URLRequest { get }
  func downloadWith(delegate: URLConnectionDownloadDelegate) -> URLConnection
  init()
}
