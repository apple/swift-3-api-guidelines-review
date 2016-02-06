
@available(tvOS 8.0, *)
class CKNotificationID : Object, Copying, SecureCoding {
  init()
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 8.0, *)
enum CKNotificationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Query
  case RecordZone
  case ReadNotification
}
@available(tvOS 8.0, *)
class CKNotification : Object {
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : Object])
  var notificationType: CKNotificationType { get }
  @NSCopying var notificationID: CKNotificationID? { get }
  var containerIdentifier: String? { get }
  var isPruned: Bool { get }
  @available(tvOS 9.0, *)
  var subscriptionID: String? { get }
}
@available(tvOS 8.0, *)
enum CKQueryNotificationReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case RecordCreated
  case RecordUpdated
  case RecordDeleted
}
@available(tvOS 8.0, *)
class CKQueryNotification : CKNotification {
  var queryNotificationReason: CKQueryNotificationReason { get }
  var recordFields: [String : CKRecordValue]? { get }
  @NSCopying var recordID: CKRecordID? { get }
  var isPublicDatabase: Bool { get }
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : Object])
}
@available(tvOS 8.0, *)
class CKRecordZoneNotification : CKNotification {
  @NSCopying var recordZoneID: CKRecordZoneID? { get }
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : Object])
}
