
@available(iOS 5.0, *)
class NKLibrary : NSObject {
  var issues: [NKIssue] { get }
  var downloadingAssets: [NKAssetDownload] { get }
  var currentlyReadingIssue: NKIssue?
  class func sharedLibrary() -> NKLibrary?
  func issueWithName(_ name: String) -> NKIssue?
  func addIssueWithName(_ name: String, date date: NSDate) -> NKIssue
  func removeIssue(_ issue: NKIssue)
}
