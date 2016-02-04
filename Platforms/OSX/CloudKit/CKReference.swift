
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
