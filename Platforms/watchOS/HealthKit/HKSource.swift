
@available(watchOS 2.0, *)
class HKSource : Object, SecureCoding, Copying {
  var name: String { get }
  var bundleIdentifier: String { get }
  class func defaultSource() -> HKSource
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
