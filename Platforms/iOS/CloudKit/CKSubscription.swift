
@available(iOS 8.0, *)
enum CKSubscriptionType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Query
  case RecordZone
}
@available(iOS 8.0, *)
struct CKSubscriptionOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var FiresOnRecordCreation: CKSubscriptionOptions { get }
  static var FiresOnRecordUpdate: CKSubscriptionOptions { get }
  static var FiresOnRecordDeletion: CKSubscriptionOptions { get }
  static var FiresOnce: CKSubscriptionOptions { get }
}
@available(iOS 8.0, *)
class CKSubscription : NSObject, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  convenience init(recordType recordType: String, predicate predicate: NSPredicate, options subscriptionOptions: CKSubscriptionOptions)
  init(recordType recordType: String, predicate predicate: NSPredicate, subscriptionID subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions)
  convenience init(zoneID zoneID: CKRecordZoneID, options subscriptionOptions: CKSubscriptionOptions)
  init(zoneID zoneID: CKRecordZoneID, subscriptionID subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions)
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
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
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
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
