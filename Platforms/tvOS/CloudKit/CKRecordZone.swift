
@available(tvOS 8.0, *)
struct CKRecordZoneCapabilities : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var FetchChanges: CKRecordZoneCapabilities { get }
  static var Atomic: CKRecordZoneCapabilities { get }
}
@available(tvOS 8.0, *)
let CKRecordZoneDefaultName: String
@available(tvOS 8.0, *)
class CKRecordZone : NSObject, NSSecureCoding, NSCopying {
  class func defaultRecordZone() -> CKRecordZone
  init(zoneName zoneName: String)
  init(zoneID zoneID: CKRecordZoneID)
  var zoneID: CKRecordZoneID { get }
  var capabilities: CKRecordZoneCapabilities { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
