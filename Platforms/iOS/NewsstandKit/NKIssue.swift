
@available(iOS 5.0, *)
let NKIssueDownloadCompletedNotification: String
@available(iOS 5.0, *)
enum NKIssueContentStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case downloading
  case available
}
@available(iOS 5.0, *)
class NKIssue : Object {
  var downloadingAssets: [NKAssetDownload] { get }
  @NSCopying var contentURL: URL { get }
  var status: NKIssueContentStatus { get }
  var name: String { get }
  @NSCopying var date: Date { get }
  func addAssetWith(request: URLRequest) -> NKAssetDownload
  init()
}
