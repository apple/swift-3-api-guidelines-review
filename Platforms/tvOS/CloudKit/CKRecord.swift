
@available(tvOS 8.0, *)
let CKRecordTypeUserRecord: String
protocol CKRecordValue : NSObjectProtocol {
}
@available(tvOS 8.0, *)
class CKRecord : NSObject, NSSecureCoding, NSCopying {
  init(recordType recordType: String)
  init(recordType recordType: String, recordID recordID: CKRecordID)
  init(recordType recordType: String, zoneID zoneID: CKRecordZoneID)
  var recordType: String { get }
  @NSCopying var recordID: CKRecordID { get }
  var recordChangeTag: String? { get }
  @NSCopying var creatorUserRecordID: CKRecordID? { get }
  @NSCopying var creationDate: NSDate? { get }
  @NSCopying var lastModifiedUserRecordID: CKRecordID? { get }
  @NSCopying var modificationDate: NSDate? { get }
  func objectForKey(_ key: String) -> CKRecordValue?
  func setObject(_ object: CKRecordValue?, forKey key: String)
  func allKeys() -> [String]
  func allTokens() -> [String]
  subscript(_ key: String) -> CKRecordValue?
  func changedKeys() -> [String]
  func encodeSystemFieldsWithCoder(_ coder: NSCoder)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
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
