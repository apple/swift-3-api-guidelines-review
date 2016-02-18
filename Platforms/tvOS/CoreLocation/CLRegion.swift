
@available(tvOS 4.0, *)
class CLRegion : Object, Copying, SecureCoding {
  @available(tvOS 4.0, *)
  var identifier: String { get }
  @available(tvOS 7.0, *)
  var notifyOnEntry: Bool
  @available(tvOS 7.0, *)
  var notifyOnExit: Bool
  init()
  @available(tvOS 4.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 4.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
