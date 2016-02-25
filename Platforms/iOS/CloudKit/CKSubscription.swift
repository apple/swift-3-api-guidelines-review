
@available(iOS 8.0, *)
enum CKSubscriptionType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case query
  case recordZone
}
@available(iOS 8.0, *)
struct CKSubscriptionOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var firesOnRecordCreation: CKSubscriptionOptions { get }
  static var firesOnRecordUpdate: CKSubscriptionOptions { get }
  static var firesOnRecordDeletion: CKSubscriptionOptions { get }
  static var firesOnce: CKSubscriptionOptions { get }
}
@available(iOS 8.0, *)
class CKSubscription : NSObject, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  convenience init(recordType recordType: String, predicate predicate: NSPredicate, options subscriptionOptions: CKSubscriptionOptions = [])
  init(recordType recordType: String, predicate predicate: NSPredicate, subscriptionID subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions = [])
  convenience init(zoneID zoneID: CKRecordZoneID, options subscriptionOptions: CKSubscriptionOptions = [])
  init(zoneID zoneID: CKRecordZoneID, subscriptionID subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions = [])
  var subscriptionID: String { get }
  var subscriptionType: CKSubscriptionType { get }
  var recordType: String? { get }
  @NSCopying var predicate: NSPredicate? { get }
  var subscriptionOptions: CKSubscriptionOptions { get }
  @NSCopying var notificationInfo: CKNotificationInfo?
  @NSCopying var zoneID: CKRecordZoneID?
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class CKNotificationInfo : NSObject, NSSecureCoding, NSCopying {
  var alertBody: String?
  var alertLocalizationKey: String?
  var alertLocalizationArgs: [String]?
  var alertActionLocalizationKey: String?
  var alertLaunchImage: String?
  var soundName: String?
  var desiredKeys: [String]?
  var shouldBadge: Bool
  var shouldSendContentAvailable: Bool
  @available(iOS 9.0, *)
  var category: String?
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
