
@available(tvOS 8.0, *)
enum CKSubscriptionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Query
  case RecordZone
}
@available(tvOS 8.0, *)
struct CKSubscriptionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FiresOnRecordCreation: CKSubscriptionOptions { get }
  static var FiresOnRecordUpdate: CKSubscriptionOptions { get }
  static var FiresOnRecordDeletion: CKSubscriptionOptions { get }
  static var FiresOnce: CKSubscriptionOptions { get }
}
@available(tvOS 8.0, *)
class CKSubscription : NSObject, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  convenience init(recordType: String, predicate: NSPredicate, options subscriptionOptions: CKSubscriptionOptions)
  init(recordType: String, predicate: NSPredicate, subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions)
  convenience init(zoneID: CKRecordZoneID, options subscriptionOptions: CKSubscriptionOptions)
  init(zoneID: CKRecordZoneID, subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions)
  var subscriptionID: String { get }
  var subscriptionType: CKSubscriptionType { get }
  var recordType: String? { get }
  @NSCopying var predicate: NSPredicate? { get }
  var subscriptionOptions: CKSubscriptionOptions { get }
  @NSCopying var notificationInfo: CKNotificationInfo?
  @NSCopying var zoneID: CKRecordZoneID?
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 8.0, *)
class CKNotificationInfo : NSObject, NSSecureCoding, NSCopying {
  var desiredKeys: [String]?
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
