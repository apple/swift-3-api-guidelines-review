
@available(OSX 10.10, *)
let CKRecordTypeUserRecord: String
protocol CKRecordValue : ObjectProtocol {
}
@available(OSX 10.10, *)
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
  func object(forKey key: String) -> CKRecordValue?
  func setObject(object: CKRecordValue?, forKey key: String)
  func allKeys() -> [String]
  func allTokens() -> [String]
  subscript (forKeyedSubscript key: String) -> CKRecordValue?
  func changedKeys() -> [String]
  func encodeSystemFields(with coder: Coder)
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  func copy(with zone: Zone = nil) -> AnyObject
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
