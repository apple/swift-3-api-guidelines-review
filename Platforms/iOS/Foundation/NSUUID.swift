
@available(iOS 6.0, *)
class UUID : Object, Copying, SecureCoding {
  init()
  convenience init?(uuidString string: String)
  convenience init(uuidBytes bytes: UnsafePointer<UInt8>)
  func getBytes(uuid: UnsafeMutablePointer<UInt8>)
  var uuidString: String { get }
  @available(iOS 6.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 6.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
