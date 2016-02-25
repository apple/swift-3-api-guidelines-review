
@available(watchOS 2.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init(circularRegionWithCenter center: CLLocationCoordinate2D, radius radius: CLLocationDistance, identifier identifier: String)
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
  func contains(_ coordinate: CLLocationCoordinate2D) -> Bool
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
