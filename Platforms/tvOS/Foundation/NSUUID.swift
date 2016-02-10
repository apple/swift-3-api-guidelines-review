
@available(tvOS 6.0, *)
class UUID : Object, Copying, SecureCoding {
  init()
  convenience init?(uuidString string: String)
  convenience init(uuidBytes bytes: UnsafePointer<UInt8>)
  func getBytes(uuid: UnsafeMutablePointer<UInt8>)
  var uuidString: String { get }
  @available(tvOS 6.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 6.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
