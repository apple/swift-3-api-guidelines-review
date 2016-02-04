
@available(iOS 8.0, *)
class CKRecordZoneID : NSObject, NSSecureCoding, NSCopying {
  init(zoneName: String, ownerName: String)
  var zoneName: String { get }
  var ownerName: String { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
