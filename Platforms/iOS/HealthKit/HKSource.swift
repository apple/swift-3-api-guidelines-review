
@available(iOS 8.0, *)
class HKSource : Object, SecureCoding, Copying {
  var name: String { get }
  var bundleIdentifier: String { get }
  class func defaultSource() -> HKSource
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
