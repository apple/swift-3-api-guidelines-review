
@available(iOS 5.0, *)
class NKLibrary : NSObject {
  var issues: [NKIssue] { get }
  var downloadingAssets: [NKAssetDownload] { get }
  var currentlyReadingIssue: NKIssue?
  class func sharedLibrary() -> NKLibrary?
  func issueWithName(name: String) -> NKIssue?
  func addIssueWithName(name: String, date: NSDate) -> NKIssue
  func removeIssue(issue: NKIssue)
  init()
}
