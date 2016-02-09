
@available(watchOS 2.0, *)
class UserActivity : Object {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [Object : AnyObject]?
  func addUserInfoEntries(from otherDictionary: [Object : AnyObject])
  @available(watchOS 2.0, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: URL?
  @available(watchOS 2.0, *)
  @NSCopying var expirationDate: Date
  @available(watchOS 2.0, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak UserActivityDelegate?
  func becomeCurrent()
  @available(watchOS 2.0, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreams(withCompletionHandler completionHandler: (InputStream?, OutputStream?, Error?) -> Void)
  @available(watchOS 2.0, *)
  var isEligibleForHandoff: Bool
  @available(watchOS 2.0, *)
  var isEligibleForSearch: Bool
  @available(watchOS 2.0, *)
  var isEligibleForPublicIndexing: Bool
}
@available(watchOS 2.0, *)
let userActivityTypeBrowsingWeb: String
@available(watchOS 2.0, *)
protocol UserActivityDelegate : ObjectProtocol {
  optional func userActivityWillSave(userActivity: UserActivity)
  optional func userActivityWasContinued(userActivity: UserActivity)
  optional func userActivity(userActivity: UserActivity?, didReceive inputStream: InputStream, outputStream: OutputStream)
}
