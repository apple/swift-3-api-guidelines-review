
@available(OSX 10.10, *)
class CKRecordZoneID : Object, SecureCoding, Copying {
  init(zoneName: String, ownerName: String)
  var zoneName: String { get }
  var ownerName: String { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
