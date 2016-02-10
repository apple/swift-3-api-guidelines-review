
@available(iOS 8.0, *)
class CKRecordZoneID : Object, SecureCoding, Copying {
  init(zoneName: String, ownerName: String)
  var zoneName: String { get }
  var ownerName: String { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
