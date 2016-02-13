
@available(iOS 9.0, *)
class HKSourceRevision : Object, SecureCoding, Copying {
  var source: HKSource { get }
  var version: String? { get }
  init(source: HKSource, version: String)
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
