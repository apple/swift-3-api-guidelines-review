
@available(iOS 8.0, *)
class CKRecordZoneID : NSObject, NSSecureCoding, NSCopying {
  init(zoneName zoneName: String, ownerName ownerName: String)
  var zoneName: String { get }
  var ownerName: String { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
