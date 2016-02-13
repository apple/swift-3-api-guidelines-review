
class Null : Object, Copying, SecureCoding {
  init()
  func copy(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
