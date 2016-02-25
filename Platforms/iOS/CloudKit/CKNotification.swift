
@available(iOS 8.0, *)
class CKNotificationID : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
enum CKNotificationType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Query
  case RecordZone
  case ReadNotification
}
@available(iOS 8.0, *)
class CKNotification : NSObject {
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : NSObject])
  var notificationType: CKNotificationType { get }
  @NSCopying var notificationID: CKNotificationID? { get }
  var containerIdentifier: String? { get }
  var isPruned: Bool { get }
  var alertBody: String? { get }
  var alertLocalizationKey: String? { get }
  var alertLocalizationArgs: [String]? { get }
  var alertActionLocalizationKey: String? { get }
  var alertLaunchImage: String? { get }
  @NSCopying var badge: NSNumber? { get }
  var soundName: String? { get }
  @available(iOS 9.0, *)
  var subscriptionID: String? { get }
  @available(iOS 9.0, *)
  var category: String? { get }
}
@available(iOS 8.0, *)
enum CKQueryNotificationReason : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case RecordCreated
  case RecordUpdated
  case RecordDeleted
}
@available(iOS 8.0, *)
class CKQueryNotification : CKNotification {
  var queryNotificationReason: CKQueryNotificationReason { get }
  var recordFields: [String : CKRecordValue]? { get }
  @NSCopying var recordID: CKRecordID? { get }
  var isPublicDatabase: Bool { get }
}
@available(iOS 8.0, *)
class CKRecordZoneNotification : CKNotification {
  @NSCopying var recordZoneID: CKRecordZoneID? { get }
}
