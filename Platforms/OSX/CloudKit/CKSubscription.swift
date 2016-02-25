
@available(OSX 10.10, *)
enum CKSubscriptionType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case query
  case recordZone
}
@available(OSX 10.10, *)
struct CKSubscriptionOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var firesOnRecordCreation: CKSubscriptionOptions { get }
  static var firesOnRecordUpdate: CKSubscriptionOptions { get }
  static var firesOnRecordDeletion: CKSubscriptionOptions { get }
  static var firesOnce: CKSubscriptionOptions { get }
}
@available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.10, *)
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
  @available(OSX 10.11, *)
  var category: String?
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
