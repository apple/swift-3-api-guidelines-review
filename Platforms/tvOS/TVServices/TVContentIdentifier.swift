
@available(tvOS 9.0, *)
class TVContentIdentifier : Object, Copying, SecureCoding {
  var identifier: String { get }
  @NSCopying var container: TVContentIdentifier? { get }
  init?(identifier: String, container: TVContentIdentifier?)
  init?(coder: Coder)
  @available(tvOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encode(with aCoder: Coder)
}
