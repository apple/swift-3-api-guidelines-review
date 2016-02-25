
@available(OSX 10.10, *)
struct CKRecordZoneCapabilities : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var FetchChanges: CKRecordZoneCapabilities { get }
  static var Atomic: CKRecordZoneCapabilities { get }
}
@available(OSX 10.10, *)
let CKRecordZoneDefaultName: String
@available(OSX 10.10, *)
class CKRecordZone : NSObject, NSSecureCoding, NSCopying {
  class func defaultRecordZone() -> CKRecordZone
  init(zoneName zoneName: String)
  init(zoneID zoneID: CKRecordZoneID)
  var zoneID: CKRecordZoneID { get }
  var capabilities: CKRecordZoneCapabilities { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
