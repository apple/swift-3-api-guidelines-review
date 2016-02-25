
@available(iOS 8.0, *)
class NSUserActivity : NSObject {
  init(activityType activityType: String)
  var activityType: String { get }
  var title: String?
  var userInfo: [NSObject : AnyObject]?
  func addUserInfoEntriesFromDictionary(_ otherDictionary: [NSObject : AnyObject])
  @available(iOS 9.0, *)
  var requiredUserInfoKeys: Set<String>
  var needsSave: Bool
  @NSCopying var webpageURL: NSURL?
  @available(iOS 9.0, *)
  @NSCopying var expirationDate: NSDate
  @available(iOS 9.0, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  func becomeCurrent()
  @available(iOS 9.0, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreamsWithCompletionHandler(_ completionHandler: (NSInputStream?, NSOutputStream?, NSError?) -> Void)
  @available(iOS 9.0, *)
  var eligibleForHandoff: Bool
  @available(iOS 9.0, *)
  var eligibleForSearch: Bool
  @available(iOS 9.0, *)
  var eligibleForPublicIndexing: Bool
}
@available(iOS 8.0, *)
let NSUserActivityTypeBrowsingWeb: String
@available(iOS 8.0, *)
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(_ userActivity: NSUserActivity)
  optional func userActivityWasContinued(_ userActivity: NSUserActivity)
  optional func userActivity(_ userActivity: NSUserActivity?, didReceiveInputStream inputStream: NSInputStream, outputStream outputStream: NSOutputStream)
}
