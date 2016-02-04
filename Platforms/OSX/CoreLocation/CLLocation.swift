
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
@available(OSX 10.7, *)
let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy
let kCLLocationAccuracyBest: CLLocationAccuracy
let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy
let kCLLocationAccuracyHundredMeters: CLLocationAccuracy
let kCLLocationAccuracyKilometer: CLLocationAccuracy
let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy
@available(OSX 10.7, *)
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
@available(OSX 10.7, *)
func CLLocationCoordinate2DIsValid(coord: CLLocationCoordinate2D) -> Bool
@available(OSX 10.7, *)
func CLLocationCoordinate2DMake(latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
@available(OSX 10.6, *)
class CLLocation : NSObject, NSCopying, NSSecureCoding {
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp: NSDate)
  @available(OSX 10.7, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: NSDate)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  @available(OSX 10.7, *)
  var course: CLLocationDirection { get }
  @available(OSX 10.7, *)
  var speed: CLLocationSpeed { get }
  @NSCopying var timestamp: NSDate { get }
  var description: String { get }
  @available(OSX 10.6, *)
  func distanceFromLocation(location: CLLocation) -> CLLocationDistance
  init()
  @available(OSX 10.6, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
