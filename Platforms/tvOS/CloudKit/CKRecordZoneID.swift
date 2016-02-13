
@available(tvOS 8.0, *)
class CKRecordZoneID : Object, SecureCoding, Copying {
  init(zoneName: String, ownerName: String)
  var zoneName: String { get }
  var ownerName: String { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
