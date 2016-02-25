
@available(tvOS 8.0, *)
enum CKReferenceAction : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case DeleteSelf
}
@available(tvOS 8.0, *)
class CKReference : NSObject, NSSecureCoding, NSCopying {
  init(recordID recordID: CKRecordID, action action: CKReferenceAction)
  convenience init(record record: CKRecord, action action: CKReferenceAction)
  var referenceAction: CKReferenceAction { get }
  @NSCopying var recordID: CKRecordID { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
