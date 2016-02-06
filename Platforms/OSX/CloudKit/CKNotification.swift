
@available(OSX 10.10, *)
class CKNotificationID : Object, Copying, SecureCoding {
  init()
  @available(OSX 10.10, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.10, *)
enum CKNotificationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Query
  case RecordZone
  case ReadNotification
}
@available(OSX 10.10, *)
class CKNotification : Object {
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : Object])
  var notificationType: CKNotificationType { get }
  @NSCopying var notificationID: CKNotificationID? { get }
  var containerIdentifier: String? { get }
  var isPruned: Bool { get }
  var alertBody: String? { get }
  var alertLocalizationKey: String? { get }
  var alertLocalizationArgs: [String]? { get }
  var alertActionLocalizationKey: String? { get }
  var alertLaunchImage: String? { get }
  @NSCopying var badge: Number? { get }
  var soundName: String? { get }
  @available(OSX 10.11, *)
  var subscriptionID: String? { get }
  @available(OSX 10.11, *)
  var category: String? { get }
}
@available(OSX 10.10, *)
enum CKQueryNotificationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case RecordCreated
  case RecordUpdated
  case RecordDeleted
}
@available(OSX 10.10, *)
class CKQueryNotification : CKNotification {
  var queryNotificationReason: CKQueryNotificationReason { get }
  var recordFields: [String : CKRecordValue]? { get }
  @NSCopying var recordID: CKRecordID? { get }
  var isPublicDatabase: Bool { get }
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : Object])
}
@available(OSX 10.10, *)
class CKRecordZoneNotification : CKNotification {
  @NSCopying var recordZoneID: CKRecordZoneID? { get }
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : Object])
}
