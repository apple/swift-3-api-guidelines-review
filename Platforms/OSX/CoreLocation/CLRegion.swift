
@available(OSX 10.10, *)
enum CLRegionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Inside
  case Outside
}
@available(OSX 10.7, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(OSX, introduced=10.7, deprecated=10.10)
  init(circularRegionWithCenter center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
  @available(OSX, introduced=10.7, deprecated=10.10)
  var center: CLLocationCoordinate2D { get }
  @available(OSX, introduced=10.7, deprecated=10.10)
  var radius: CLLocationDistance { get }
  @available(OSX 10.7, *)
  var identifier: String { get }
  @available(OSX 10.10, *)
  var notifyOnEntry: Bool
  @available(OSX 10.10, *)
  var notifyOnExit: Bool
  @available(OSX, introduced=10.7, deprecated=10.10)
  func containsCoordinate(coordinate: CLLocationCoordinate2D) -> Bool
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
