
@available(tvOS 8.0, *)
class UserActivity : Object {
  init(activityType: String)
  init()
  var activityType: String { get }
  var title: String?
  var userInfo: [Object : AnyObject]?
  func addUserInfoEntriesFrom(otherDictionary: [Object : AnyObject])
  @available(tvOS 9.0, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: URL?
  @available(tvOS 9.0, *)
  @NSCopying var expirationDate: Date
  @available(tvOS 9.0, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak UserActivityDelegate?
  func becomeCurrent()
  @available(tvOS 9.0, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreams(completionHandler completionHandler: (InputStream?, OutputStream?, Error?) -> Void)
  @available(tvOS 9.0, *)
  var isEligibleForHandoff: Bool
  @available(tvOS 9.0, *)
  var isEligibleForSearch: Bool
  @available(tvOS 9.0, *)
  var isEligibleForPublicIndexing: Bool
}
@available(tvOS 8.0, *)
let userActivityTypeBrowsingWeb: String
@available(tvOS 8.0, *)
protocol UserActivityDelegate : ObjectProtocol {
  optional func userActivityWillSave(userActivity: UserActivity)
  optional func userActivityWasContinued(userActivity: UserActivity)
  optional func userActivity(userActivity: UserActivity?, didReceive inputStream: InputStream, outputStream: OutputStream)
}
