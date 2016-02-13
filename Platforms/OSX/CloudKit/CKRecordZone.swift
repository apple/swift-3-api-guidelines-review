
@available(OSX 10.10, *)
struct CKRecordZoneCapabilities : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var fetchChanges: CKRecordZoneCapabilities { get }
  static var atomic: CKRecordZoneCapabilities { get }
}
@available(OSX 10.10, *)
let CKRecordZoneDefaultName: String
@available(OSX 10.10, *)
class CKRecordZone : Object, SecureCoding, Copying {
  class func defaultRecordZone() -> CKRecordZone
  init(zoneName: String)
  init(zoneID: CKRecordZoneID)
  var zoneID: CKRecordZoneID { get }
  var capabilities: CKRecordZoneCapabilities { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  func copy(zone: Zone = nil) -> AnyObject
}
