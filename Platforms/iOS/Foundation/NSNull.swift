
class Null : Object, Copying, SecureCoding {
  init()
  func copy(withZone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
