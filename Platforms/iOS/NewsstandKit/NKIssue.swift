
@available(iOS 5.0, *)
let NKIssueDownloadCompletedNotification: String
@available(iOS 5.0, *)
enum NKIssueContentStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Downloading
  case Available
}
@available(iOS 5.0, *)
class NKIssue : NSObject {
  var downloadingAssets: [NKAssetDownload] { get }
  @NSCopying var contentURL: NSURL { get }
  var status: NKIssueContentStatus { get }
  var name: String { get }
  @NSCopying var date: NSDate { get }
  func addAssetWithRequest(request: NSURLRequest) -> NKAssetDownload
  init()
}
