
@available(tvOS 8.0, *)
enum CKReferenceAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case deleteSelf
}
@available(tvOS 8.0, *)
class CKReference : Object, SecureCoding, Copying {
  init(recordID: CKRecordID, action: CKReferenceAction)
  convenience init(record: CKRecord, action: CKReferenceAction)
  var referenceAction: CKReferenceAction { get }
  @NSCopying var recordID: CKRecordID { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
