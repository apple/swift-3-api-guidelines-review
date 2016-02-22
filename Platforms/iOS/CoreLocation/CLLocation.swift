
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
@available(iOS 4.0, *)
let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy
let kCLLocationAccuracyBest: CLLocationAccuracy
let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy
let kCLLocationAccuracyHundredMeters: CLLocationAccuracy
let kCLLocationAccuracyKilometer: CLLocationAccuracy
let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy
@available(iOS 6.0, *)
let CLLocationDistanceMax: CLLocationDistance
@available(iOS 6.0, *)
let CLTimeIntervalMax: NSTimeInterval
@available(iOS 4.0, *)
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
@available(iOS 4.0, *)
func CLLocationCoordinate2DIsValid(coord: CLLocationCoordinate2D) -> Bool
@available(iOS 4.0, *)
func CLLocationCoordinate2DMake(latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
@available(iOS 8.0, *)
class CLFloor : NSObject, NSCopying, NSSecureCoding {
  var level: Int { get }
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 2.0, *)
class CLLocation : NSObject, NSCopying, NSSecureCoding {
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp: NSDate)
  @available(iOS 4.2, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: NSDate)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  @available(iOS 2.2, *)
  var course: CLLocationDirection { get }
  @available(iOS 2.2, *)
  var speed: CLLocationSpeed { get }
  @NSCopying var timestamp: NSDate { get }
  @available(iOS 8.0, *)
  @NSCopying var floor: CLFloor? { get }
  var description: String { get }
  @available(iOS 3.2, *)
  func distance(from location: CLLocation) -> CLLocationDistance
  init()
  @available(iOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
