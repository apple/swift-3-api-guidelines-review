
@available(OSX 10.10, *)
enum CKReferenceAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case deleteSelf
}
@available(OSX 10.10, *)
class CKReference : Object, SecureCoding, Copying {
  init(recordID: CKRecordID, action: CKReferenceAction)
  convenience init(record: CKRecord, action: CKReferenceAction)
  var referenceAction: CKReferenceAction { get }
  @NSCopying var recordID: CKRecordID { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
