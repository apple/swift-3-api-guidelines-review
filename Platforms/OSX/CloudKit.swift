
@available(OSX 10.10, *)
class CKAsset : NSObject {
  init(fileURL: NSURL)
  @NSCopying var fileURL: NSURL { get }
}
@available(OSX 10.10, *)
let CKOwnerDefaultName: String
@available(OSX 10.10, *)
class CKContainer : NSObject {
  class func defaultContainer() -> CKContainer
  /*not inherited*/ init(identifier containerIdentifier: String)
  var containerIdentifier: String? { get }
  func addOperation(operation: CKOperation)
}
extension CKContainer {
  var privateCloudDatabase: CKDatabase { get }
  var publicCloudDatabase: CKDatabase { get }
}
@available(OSX 10.10, *)
enum CKAccountStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CouldNotDetermine
  case Available
  case Restricted
  case NoAccount
}
@available(OSX 10.11, *)
let CKAccountChangedNotification: String
extension CKContainer {
  func accountStatusWithCompletionHandler(completionHandler: (CKAccountStatus, NSError?) -> Void)
}
@available(OSX 10.10, *)
struct CKApplicationPermissions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var UserDiscoverability: CKApplicationPermissions { get }
}
@available(OSX 10.10, *)
enum CKApplicationPermissionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InitialState
  case CouldNotComplete
  case Denied
  case Granted
}
typealias CKApplicationPermissionBlock = (CKApplicationPermissionStatus, NSError?) -> Void
extension CKContainer {
  func statusForApplicationPermission(applicationPermission: CKApplicationPermissions, completionHandler: CKApplicationPermissionBlock)
  func requestApplicationPermission(applicationPermission: CKApplicationPermissions, completionHandler: CKApplicationPermissionBlock)
}
extension CKContainer {
  func fetchUserRecordIDWithCompletionHandler(completionHandler: (CKRecordID?, NSError?) -> Void)
  func discoverAllContactUserInfosWithCompletionHandler(completionHandler: ([CKDiscoveredUserInfo]?, NSError?) -> Void)
  func discoverUserInfoWithEmailAddress(email: String, completionHandler: (CKDiscoveredUserInfo?, NSError?) -> Void)
  func discoverUserInfoWithUserRecordID(userRecordID: CKRecordID, completionHandler: (CKDiscoveredUserInfo?, NSError?) -> Void)
}
@available(OSX 10.10, *)
class CKDatabase : NSObject {
  func addOperation(operation: CKDatabaseOperation)
}
extension CKDatabase {
  func fetchRecordWithID(recordID: CKRecordID, completionHandler: (CKRecord?, NSError?) -> Void)
  func saveRecord(record: CKRecord, completionHandler: (CKRecord?, NSError?) -> Void)
  func deleteRecordWithID(recordID: CKRecordID, completionHandler: (CKRecordID?, NSError?) -> Void)
  func performQuery(query: CKQuery, inZoneWithID zoneID: CKRecordZoneID?, completionHandler: ([CKRecord]?, NSError?) -> Void)
  func fetchAllRecordZonesWithCompletionHandler(completionHandler: ([CKRecordZone]?, NSError?) -> Void)
  func fetchRecordZoneWithID(zoneID: CKRecordZoneID, completionHandler: (CKRecordZone?, NSError?) -> Void)
  func saveRecordZone(zone: CKRecordZone, completionHandler: (CKRecordZone?, NSError?) -> Void)
  func deleteRecordZoneWithID(zoneID: CKRecordZoneID, completionHandler: (CKRecordZoneID?, NSError?) -> Void)
  func fetchSubscriptionWithID(subscriptionID: String, completionHandler: (CKSubscription?, NSError?) -> Void)
  func fetchAllSubscriptionsWithCompletionHandler(completionHandler: ([CKSubscription]?, NSError?) -> Void)
  func saveSubscription(subscription: CKSubscription, completionHandler: (CKSubscription?, NSError?) -> Void)
  func deleteSubscriptionWithID(subscriptionID: String, completionHandler: (String?, NSError?) -> Void)
}
@available(OSX 10.10, *)
class CKDatabaseOperation : CKOperation {
  var database: CKDatabase?
  init()
}
@available(OSX 10.10, *)
class CKDiscoverAllContactsOperation : CKOperation {
  init()
  var discoverAllContactsCompletionBlock: (([CKDiscoveredUserInfo]?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
class CKDiscoverUserInfosOperation : CKOperation {
  init()
  convenience init(emailAddresses: [String]?, userRecordIDs: [CKRecordID]?)
  var emailAddresses: [String]?
  var userRecordIDs: [CKRecordID]?
  var discoverUserInfosCompletionBlock: (([String : CKDiscoveredUserInfo]?, [CKRecordID : CKDiscoveredUserInfo]?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
class CKDiscoveredUserInfo : NSObject {
  @NSCopying var userRecordID: CKRecordID? { get }
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use -[[CKDiscoveredUserInfo displayContact] givenName]")
  var firstName: String? { get }
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use -[[CKDiscoveredUserInfo displayContact] familyName]")
  var lastName: String? { get }
  @available(OSX 10.11, *)
  @NSCopying var displayContact: CNContact? { get }
}
@available(OSX 10.10, *)
let CKErrorDomain: String
@available(OSX 10.10, *)
let CKPartialErrorsByItemIDKey: String
@available(OSX 10.10, *)
let CKRecordChangedErrorAncestorRecordKey: String
@available(OSX 10.10, *)
let CKRecordChangedErrorServerRecordKey: String
@available(OSX 10.10, *)
let CKRecordChangedErrorClientRecordKey: String
@available(OSX 10.10, *)
let CKErrorRetryAfterKey: String
@available(OSX 10.10, *)
enum CKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InternalError
  case PartialFailure
  case NetworkUnavailable
  case NetworkFailure
  case BadContainer
  case ServiceUnavailable
  case RequestRateLimited
  case MissingEntitlement
  case NotAuthenticated
  case PermissionFailure
  case UnknownItem
  case InvalidArguments
  case ResultsTruncated
  case ServerRecordChanged
  case ServerRejectedRequest
  case AssetFileNotFound
  case AssetFileModified
  case IncompatibleVersion
  case ConstraintViolation
  case OperationCancelled
  case ChangeTokenExpired
  case BatchRequestFailed
  case ZoneBusy
  case BadDatabase
  case QuotaExceeded
  case ZoneNotFound
  case LimitExceeded
  case UserDeletedZone
}

@available(OSX 10.10, iOS 8.0, *)
extension CKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
@available(OSX 10.10, *)
class CKFetchNotificationChangesOperation : CKOperation {
  init(previousServerChangeToken: CKServerChangeToken?)
  @NSCopying var previousServerChangeToken: CKServerChangeToken?
  var resultsLimit: Int
  var moreComing: Bool { get }
  var notificationChangedBlock: ((CKNotification) -> Void)?
  var fetchNotificationChangesCompletionBlock: ((CKServerChangeToken?, NSError?) -> Void)?
  init()
}
@available(OSX 10.10, *)
class CKFetchRecordChangesOperation : CKDatabaseOperation {
  init(recordZoneID: CKRecordZoneID, previousServerChangeToken: CKServerChangeToken?)
  @NSCopying var recordZoneID: CKRecordZoneID
  @NSCopying var previousServerChangeToken: CKServerChangeToken?
  var resultsLimit: Int
  var desiredKeys: [String]?
  var recordChangedBlock: ((CKRecord) -> Void)?
  var recordWithIDWasDeletedBlock: ((CKRecordID) -> Void)?
  var moreComing: Bool { get }
  var fetchRecordChangesCompletionBlock: ((CKServerChangeToken?, NSData?, NSError?) -> Void)?
  init()
}
@available(OSX 10.10, *)
class CKFetchRecordZonesOperation : CKDatabaseOperation {
  class func fetchAllRecordZonesOperation() -> Self
  init()
  convenience init(recordZoneIDs zoneIDs: [CKRecordZoneID])
  var recordZoneIDs: [CKRecordZoneID]?
  var fetchRecordZonesCompletionBlock: (([CKRecordZoneID : CKRecordZone]?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
class CKFetchRecordsOperation : CKDatabaseOperation {
  init()
  convenience init(recordIDs: [CKRecordID])
  class func fetchCurrentUserRecordOperation() -> Self
  var recordIDs: [CKRecordID]?
  var desiredKeys: [String]?
  var perRecordProgressBlock: ((CKRecordID, Double) -> Void)?
  var perRecordCompletionBlock: ((CKRecord?, CKRecordID?, NSError?) -> Void)?
  var fetchRecordsCompletionBlock: (([CKRecordID : CKRecord]?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
class CKFetchSubscriptionsOperation : CKDatabaseOperation {
  init()
  class func fetchAllSubscriptionsOperation() -> Self
  convenience init(subscriptionIDs: [String])
  var subscriptionIDs: [String]?
  var fetchSubscriptionCompletionBlock: (([String : CKSubscription]?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
class CKLocationSortDescriptor : NSSortDescriptor, NSSecureCoding {
  init(key: String, relativeLocation: CLLocation)
  init(coder aDecoder: NSCoder)
  @NSCopying var relativeLocation: CLLocation { get }
  convenience init(key: String?, ascending: Bool)
  convenience init(key: String?, ascending: Bool, selector: Selector)
  @available(OSX 10.6, *)
  convenience init(key: String?, ascending: Bool, comparator cmptr: NSComparator)
}
@available(OSX 10.10, *)
class CKMarkNotificationsReadOperation : CKOperation {
  init(notificationIDsToMarkRead notificationIDs: [CKNotificationID])
  var notificationIDs: [CKNotificationID]
  var markNotificationsReadCompletionBlock: (([CKNotificationID]?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
class CKModifyBadgeOperation : CKOperation {
  init()
  convenience init(badgeValue: Int)
  var badgeValue: Int
  var modifyBadgeCompletionBlock: ((NSError?) -> Void)?
}
@available(OSX 10.10, *)
class CKModifyRecordZonesOperation : CKDatabaseOperation {
  init()
  convenience init(recordZonesToSave: [CKRecordZone]?, recordZoneIDsToDelete: [CKRecordZoneID]?)
  var recordZonesToSave: [CKRecordZone]?
  var recordZoneIDsToDelete: [CKRecordZoneID]?
  var modifyRecordZonesCompletionBlock: (([CKRecordZone]?, [CKRecordZoneID]?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
enum CKRecordSavePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case IfServerRecordUnchanged
  case ChangedKeys
  case AllKeys
}
@available(OSX 10.10, *)
class CKModifyRecordsOperation : CKDatabaseOperation {
  init()
  convenience init(recordsToSave records: [CKRecord]?, recordIDsToDelete recordIDs: [CKRecordID]?)
  var recordsToSave: [CKRecord]?
  var recordIDsToDelete: [CKRecordID]?
  var savePolicy: CKRecordSavePolicy
  @NSCopying var clientChangeTokenData: NSData?
  var atomic: Bool
  var perRecordProgressBlock: ((CKRecord, Double) -> Void)?
  var perRecordCompletionBlock: ((CKRecord?, NSError?) -> Void)?
  var modifyRecordsCompletionBlock: (([CKRecord]?, [CKRecordID]?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
class CKModifySubscriptionsOperation : CKDatabaseOperation {
  init(subscriptionsToSave: [CKSubscription]?, subscriptionIDsToDelete: [String]?)
  var subscriptionsToSave: [CKSubscription]?
  var subscriptionIDsToDelete: [String]?
  var modifySubscriptionsCompletionBlock: (([CKSubscription]?, [String]?, NSError?) -> Void)?
  convenience init()
}
@available(OSX 10.10, *)
class CKNotificationID : NSObject, NSCopying, NSSecureCoding {
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : NSObject])
}
@available(OSX 10.10, *)
class CKRecordZoneNotification : CKNotification {
  @NSCopying var recordZoneID: CKRecordZoneID? { get }
  convenience init(fromRemoteNotificationDictionary notificationDictionary: [String : NSObject])
}
@available(OSX 10.10, *)
class CKOperation : NSOperation {
  init()
  func activityStart() -> os_activity_t
  var container: CKContainer?
  @available(OSX, introduced=10.10, deprecated=10.11, message="Set qualityOfService to NSQualityOfServiceUtility or NSQualityOfServiceBackground")
  var usesBackgroundSession: Bool
  var allowsCellularAccess: Bool
}
@available(OSX 10.10, *)
class CKQuery : NSObject, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  init(recordType: String, predicate: NSPredicate)
  var recordType: String { get }
  @NSCopying var predicate: NSPredicate { get }
  var sortDescriptors: [NSSortDescriptor]?
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class CKQueryCursor : NSObject, NSCopying, NSSecureCoding {
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
let CKQueryOperationMaximumResults: Int
@available(OSX 10.10, *)
class CKQueryOperation : CKDatabaseOperation {
  init()
  convenience init(query: CKQuery)
  convenience init(cursor: CKQueryCursor)
  @NSCopying var query: CKQuery?
  @NSCopying var cursor: CKQueryCursor?
  @NSCopying var zoneID: CKRecordZoneID?
  var resultsLimit: Int
  var desiredKeys: [String]?
  var recordFetchedBlock: ((CKRecord) -> Void)?
  var queryCompletionBlock: ((CKQueryCursor?, NSError?) -> Void)?
}
@available(OSX 10.10, *)
let CKRecordTypeUserRecord: String
protocol CKRecordValue : NSObjectProtocol {
}
@available(OSX 10.10, *)
class CKRecord : NSObject, NSSecureCoding, NSCopying {
  init(recordType: String)
  init(recordType: String, recordID: CKRecordID)
  init(recordType: String, zoneID: CKRecordZoneID)
  var recordType: String { get }
  @NSCopying var recordID: CKRecordID { get }
  var recordChangeTag: String? { get }
  @NSCopying var creatorUserRecordID: CKRecordID? { get }
  @NSCopying var creationDate: NSDate? { get }
  @NSCopying var lastModifiedUserRecordID: CKRecordID? { get }
  @NSCopying var modificationDate: NSDate? { get }
  func objectForKey(key: String) -> CKRecordValue?
  func setObject(object: CKRecordValue?, forKey key: String)
  func allKeys() -> [String]
  func allTokens() -> [String]
  subscript (key: String) -> CKRecordValue?
  func changedKeys() -> [String]
  func encodeSystemFieldsWithCoder(coder: NSCoder)
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSString : CKRecordValue {
}
extension NSNumber : CKRecordValue {
}
extension NSArray : CKRecordValue {
}
extension NSDate : CKRecordValue {
}
extension NSData : CKRecordValue {
}
extension CKReference : CKRecordValue {
}
extension CKAsset : CKRecordValue {
}
extension CLLocation : CKRecordValue {
}
@available(OSX 10.10, *)
class CKRecordID : NSObject, NSSecureCoding, NSCopying {
  convenience init(recordName: String)
  init(recordName: String, zoneID: CKRecordZoneID)
  var recordName: String { get }
  var zoneID: CKRecordZoneID { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
struct CKRecordZoneCapabilities : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FetchChanges: CKRecordZoneCapabilities { get }
  static var Atomic: CKRecordZoneCapabilities { get }
}
@available(OSX 10.10, *)
let CKRecordZoneDefaultName: String
@available(OSX 10.10, *)
class CKRecordZone : NSObject, NSSecureCoding, NSCopying {
  class func defaultRecordZone() -> CKRecordZone
  init(zoneName: String)
  init(zoneID: CKRecordZoneID)
  var zoneID: CKRecordZoneID { get }
  var capabilities: CKRecordZoneCapabilities { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class CKRecordZoneID : NSObject, NSSecureCoding, NSCopying {
  init(zoneName: String, ownerName: String)
  var zoneName: String { get }
  var ownerName: String { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
enum CKReferenceAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case DeleteSelf
}
@available(OSX 10.10, *)
class CKReference : NSObject, NSSecureCoding, NSCopying {
  init(recordID: CKRecordID, action: CKReferenceAction)
  convenience init(record: CKRecord, action: CKReferenceAction)
  var referenceAction: CKReferenceAction { get }
  @NSCopying var recordID: CKRecordID { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class CKServerChangeToken : NSObject, NSCopying, NSSecureCoding {
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
enum CKSubscriptionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Query
  case RecordZone
}
@available(OSX 10.10, *)
struct CKSubscriptionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FiresOnRecordCreation: CKSubscriptionOptions { get }
  static var FiresOnRecordUpdate: CKSubscriptionOptions { get }
  static var FiresOnRecordDeletion: CKSubscriptionOptions { get }
  static var FiresOnce: CKSubscriptionOptions { get }
}
@available(OSX 10.10, *)
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
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
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
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
