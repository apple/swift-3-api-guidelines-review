
@available(OSX 10.10, *)
class CKRecordID : Object, SecureCoding, Copying {
  convenience init(recordName: String)
  init(recordName: String, zoneID: CKRecordZoneID)
  var recordName: String { get }
  var zoneID: CKRecordZoneID { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  func copy(zone: Zone = nil) -> AnyObject
}
