
@available(OSX 10.10, *)
class CKRecordZoneID : NSObject, NSSecureCoding, NSCopying {
  init(zoneName: String, ownerName: String)
  var zoneName: String { get }
  var ownerName: String { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
