
@available(iOS 8.0, *)
class UserActivity : Object {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [Object : AnyObject]?
  func addUserInfoEntriesFrom(otherDictionary: [Object : AnyObject])
  @available(iOS 9.0, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: URL?
  @available(iOS 9.0, *)
  @NSCopying var expirationDate: Date
  @available(iOS 9.0, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak UserActivityDelegate?
  func becomeCurrent()
  @available(iOS 9.0, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreamsWithCompletionHandler(completionHandler: (InputStream?, OutputStream?, Error?) -> Void)
  @available(iOS 9.0, *)
  var isEligibleForHandoff: Bool
  @available(iOS 9.0, *)
  var isEligibleForSearch: Bool
  @available(iOS 9.0, *)
  var isEligibleForPublicIndexing: Bool
}
@available(iOS 8.0, *)
let userActivityTypeBrowsingWeb: String
@available(iOS 8.0, *)
protocol UserActivityDelegate : ObjectProtocol {
  optional func userActivityWillSave(userActivity: UserActivity)
  optional func userActivityWasContinued(userActivity: UserActivity)
  optional func userActivity(userActivity: UserActivity?, didReceive inputStream: InputStream, outputStream: OutputStream)
}
