
@available(watchOS 2.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
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
  func containsCoordinate(coordinate: CLLocationCoordinate2D) -> Bool
  init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
