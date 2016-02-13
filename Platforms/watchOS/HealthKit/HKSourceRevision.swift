
@available(watchOS 2.0, *)
class HKSourceRevision : Object, SecureCoding, Copying {
  var source: HKSource { get }
  var version: String? { get }
  init(source: HKSource, version: String)
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
