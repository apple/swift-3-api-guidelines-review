
typealias CLLocationDegrees = Double
typealias CLLocationAccuracy = Double
typealias CLLocationSpeed = Double
typealias CLLocationDirection = Double
struct CLLocationCoordinate2D {
  var latitude: CLLocationDegrees
  var longitude: CLLocationDegrees
  init()
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
}
typealias CLLocationDistance = Double
let kCLDistanceFilterNone: CLLocationDistance
@available(tvOS 4.0, *)
let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy
let kCLLocationAccuracyBest: CLLocationAccuracy
let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy
let kCLLocationAccuracyHundredMeters: CLLocationAccuracy
let kCLLocationAccuracyKilometer: CLLocationAccuracy
let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy
@available(tvOS 6.0, *)
let CLLocationDistanceMax: CLLocationDistance
@available(tvOS 6.0, *)
let CLTimeIntervalMax: NSTimeInterval
@available(tvOS 4.0, *)
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
@available(tvOS 4.0, *)
func CLLocationCoordinate2DIsValid(coord: CLLocationCoordinate2D) -> Bool
@available(tvOS 4.0, *)
func CLLocationCoordinate2DMake(latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
@available(tvOS 8.0, *)
class CLFloor : NSObject, NSCopying, NSSecureCoding {
  var level: Int { get }
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 2.0, *)
class CLLocation : NSObject, NSCopying, NSSecureCoding {
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp: NSDate)
  @available(tvOS 4.2, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: NSDate)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  @NSCopying var timestamp: NSDate { get }
  @available(tvOS 8.0, *)
  @NSCopying var floor: CLFloor? { get }
  var description: String { get }
  @available(tvOS 3.2, *)
  func distanceFromLocation(location: CLLocation) -> CLLocationDistance
  init()
  @available(tvOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
