
@available(watchOS 2.0, *)
class CLRegion : Object, Copying, SecureCoding {
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init(circularRegionWithCenter center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var center: CLLocationCoordinate2D { get }
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var radius: CLLocationDistance { get }
  @available(watchOS 2.0, *)
  var identifier: String { get }
  @available(watchOS 2.0, *)
  var notifyOnEntry: Bool
  @available(watchOS 2.0, *)
  var notifyOnExit: Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func contains(coordinate: CLLocationCoordinate2D) -> Bool
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
