
@available(OSX 10.10, *)
class UserActivity : Object {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [Object : AnyObject]?
  func addUserInfoEntriesFrom(otherDictionary: [Object : AnyObject])
  @available(OSX 10.11, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: URL?
  @available(OSX 10.11, *)
  @NSCopying var expirationDate: Date
  @available(OSX 10.11, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak UserActivityDelegate?
  func becomeCurrent()
  @available(OSX 10.11, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreams(completionHandler completionHandler: (InputStream?, OutputStream?, Error?) -> Void)
  @available(OSX 10.11, *)
  var isEligibleForHandoff: Bool
  @available(OSX 10.11, *)
  var isEligibleForSearch: Bool
  @available(OSX 10.11, *)
  var isEligibleForPublicIndexing: Bool
}
@available(OSX 10.10, *)
let userActivityTypeBrowsingWeb: String
@available(OSX 10.10, *)
protocol UserActivityDelegate : ObjectProtocol {
  optional func userActivityWillSave(userActivity: UserActivity)
  optional func userActivityWasContinued(userActivity: UserActivity)
  optional func userActivity(userActivity: UserActivity?, didReceive inputStream: InputStream, outputStream: OutputStream)
}
