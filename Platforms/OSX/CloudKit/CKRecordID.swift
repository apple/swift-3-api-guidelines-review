
@available(OSX 10.10, *)
class CKRecordID : NSObject, NSSecureCoding, NSCopying {
  convenience init(recordName recordName: String)
  init(recordName recordName: String, zoneID zoneID: CKRecordZoneID)
  var recordName: String { get }
  var zoneID: CKRecordZoneID { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
