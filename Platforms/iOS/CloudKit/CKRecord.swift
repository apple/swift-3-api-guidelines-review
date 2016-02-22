
@available(iOS 8.0, *)
let CKRecordTypeUserRecord: String
protocol CKRecordValue : NSObjectProtocol {
}
@available(iOS 8.0, *)
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
  func object(forKey key: String) -> CKRecordValue?
  func setObject(object: CKRecordValue?, forKey key: String)
  func allKeys() -> [String]
  func allTokens() -> [String]
  subscript(key: String) -> CKRecordValue?
  func changedKeys() -> [String]
  func encodeSystemFields(with coder: NSCoder)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
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
