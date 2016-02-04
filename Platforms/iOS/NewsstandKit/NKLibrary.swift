
@available(iOS 5.0, *)
class NKLibrary : Object {
  var issues: [NKIssue] { get }
  var downloadingAssets: [NKAssetDownload] { get }
  var currentlyReadingIssue: NKIssue?
  class func shared() -> NKLibrary?
  func issueWithName(name: String) -> NKIssue?
  func addIssueWithName(name: String, date: Date) -> NKIssue
  func removeIssue(issue: NKIssue)
  init()
}
