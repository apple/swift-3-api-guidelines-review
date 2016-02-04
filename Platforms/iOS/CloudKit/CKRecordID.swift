
@available(iOS 8.0, *)
class CKRecordID : NSObject, NSSecureCoding, NSCopying {
  convenience init(recordName: String)
  init(recordName: String, zoneID: CKRecordZoneID)
  var recordName: String { get }
  var zoneID: CKRecordZoneID { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
