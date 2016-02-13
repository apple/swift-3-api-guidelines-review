
@available(iOS 6.0, *)
class UUID : Object, Copying, SecureCoding {
  init()
  convenience init?(uuidString string: String)
  convenience init(uuidBytes bytes: UnsafePointer<UInt8>)
  func getBytes(uuid: UnsafeMutablePointer<UInt8>)
  var uuidString: String { get }
  @available(iOS 6.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 6.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
