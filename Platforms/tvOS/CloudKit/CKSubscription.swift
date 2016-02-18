
@available(tvOS 8.0, *)
enum CKSubscriptionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case query
  case recordZone
}
@available(tvOS 8.0, *)
struct CKSubscriptionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var firesOnRecordCreation: CKSubscriptionOptions { get }
  static var firesOnRecordUpdate: CKSubscriptionOptions { get }
  static var firesOnRecordDeletion: CKSubscriptionOptions { get }
  static var firesOnce: CKSubscriptionOptions { get }
}
@available(tvOS 8.0, *)
class CKSubscription : Object, SecureCoding, Copying {
  init(coder aDecoder: Coder)
  convenience init(recordType: String, predicate: Predicate, options subscriptionOptions: CKSubscriptionOptions = [])
  init(recordType: String, predicate: Predicate, subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions = [])
  convenience init(zoneID: CKRecordZoneID, options subscriptionOptions: CKSubscriptionOptions = [])
  init(zoneID: CKRecordZoneID, subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions = [])
  var subscriptionID: String { get }
  var subscriptionType: CKSubscriptionType { get }
  var recordType: String? { get }
  @NSCopying var predicate: Predicate? { get }
  var subscriptionOptions: CKSubscriptionOptions { get }
  @NSCopying var notificationInfo: CKNotificationInfo?
  @NSCopying var zoneID: CKRecordZoneID?
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
class CKNotificationInfo : Object, SecureCoding, Copying {
  var desiredKeys: [String]?
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
