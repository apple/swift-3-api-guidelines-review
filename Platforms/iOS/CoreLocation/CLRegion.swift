
@available(iOS 7.0, *)
enum CLRegionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case inside
  case outside
}
@available(iOS 7.0, *)
enum CLProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case immediate
  case near
  case far
}
@available(iOS 4.0, *)
class CLRegion : Object, Copying, SecureCoding {
  @available(iOS 4.0, *)
  var identifier: String { get }
  @available(iOS 7.0, *)
  var notifyOnEntry: Bool
  @available(iOS 7.0, *)
  var notifyOnExit: Bool
  init()
  @available(iOS 4.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
