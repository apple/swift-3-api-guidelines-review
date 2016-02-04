
@available(tvOS 8.0, *)
let CKRecordTypeUserRecord: String
protocol CKRecordValue : ObjectProtocol {
}
@available(tvOS 8.0, *)
class CKRecord : Object, SecureCoding, Copying {
  init(recordType: String)
  init(recordType: String, recordID: CKRecordID)
  init(recordType: String, zoneID: CKRecordZoneID)
  var recordType: String { get }
  @NSCopying var recordID: CKRecordID { get }
  var recordChangeTag: String? { get }
  @NSCopying var creatorUserRecordID: CKRecordID? { get }
  @NSCopying var creationDate: Date? { get }
  @NSCopying var lastModifiedUserRecordID: CKRecordID? { get }
  @NSCopying var modificationDate: Date? { get }
  func objectForKey(key: String) -> CKRecordValue?
  func setObject(object: CKRecordValue?, forKey key: String)
  func allKeys() -> [String]
  func allTokens() -> [String]
  subscript (key: String) -> CKRecordValue?
  func changedKeys() -> [String]
  func encodeSystemFieldsWith(coder: Coder)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension NSString : CKRecordValue {
}
extension Number : CKRecordValue {
}
extension NSArray : CKRecordValue {
}
extension Date : CKRecordValue {
}
extension Data : CKRecordValue {
}
extension CKReference : CKRecordValue {
}
extension CKAsset : CKRecordValue {
}
extension CLLocation : CKRecordValue {
}
