
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
@available(tvOS 7.0, *)
class CLCircularRegion : CLRegion {
  init(center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
  var center: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  func contains(coordinate: CLLocationCoordinate2D) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum CLError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LocationUnknown
  case Denied
  case Network
  case HeadingFailure
  case RegionMonitoringDenied
  case RegionMonitoringFailure
  case RegionMonitoringSetupDelayed
  case RegionMonitoringResponseDelayed
  case GeocodeFoundNoResult
  case GeocodeFoundPartialResult
  case GeocodeCanceled
  case DeferredFailed
  case DeferredNotUpdatingLocation
  case DeferredAccuracyTooLow
  case DeferredDistanceFiltered
  case DeferredCanceled
  case RangingUnavailable
  case RangingFailure
}

extension CLError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
let kCLErrorDomain: String
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, NSError?) -> Void
@available(tvOS 5.0, *)
class CLGeocoder : NSObject {
  var isGeocoding: Bool { get }
  func reverseGeocodeLocation(location: CLLocation, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressDictionary(addressDictionary: [NSObject : AnyObject], completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, in region: CLRegion?, completionHandler: CLGeocodeCompletionHandler)
  func cancelGeocode()
  init()
}
typealias CLHeadingComponentValue = Double
let kCLHeadingFilterNone: CLLocationDegrees
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
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
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
  func distanceFrom(location: CLLocation) -> CLLocationDistance
  init()
  @available(tvOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(tvOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
enum CLDeviceOrientation : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Portrait
  case PortraitUpsideDown
  case LandscapeLeft
  case LandscapeRight
  case FaceUp
  case FaceDown
}
enum CLAuthorizationStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NotDetermined
  case Restricted
  case Denied
  @available(tvOS 8.0, *)
  case AuthorizedAlways
  @available(tvOS 8.0, *)
  case AuthorizedWhenInUse
}
enum CLActivityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Other
  case AutomotiveNavigation
  case Fitness
  case OtherNavigation
}
@available(tvOS 2.0, *)
class CLLocationManager : NSObject {
  @available(tvOS 4.0, *)
  class func locationServicesEnabled() -> Bool
  @available(tvOS 4.2, *)
  class func authorizationStatus() -> CLAuthorizationStatus
  unowned(unsafe) var delegate: @sil_unmanaged CLLocationManagerDelegate?
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @NSCopying var location: CLLocation? { get }
  @available(tvOS 8.0, *)
  func requestWhenInUseAuthorization()
  func stopUpdatingLocation()
  @available(tvOS 9.0, *)
  func requestLocation()
  init()
}
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  optional func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  @available(tvOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
  @available(tvOS 4.2, *)
  optional func locationManager(manager: CLLocationManager, didChange status: CLAuthorizationStatus)
}
extension CLLocationManager {
}
@available(tvOS 5.0, *)
class CLPlacemark : NSObject, NSCopying, NSSecureCoding {
  init(placemark: CLPlacemark)
  @NSCopying var location: CLLocation? { get }
  @NSCopying var region: CLRegion? { get }
  @available(tvOS 9.0, *)
  @NSCopying var timeZone: NSTimeZone? { get }
  var addressDictionary: [NSObject : AnyObject]? { get }
  var name: String? { get }
  var thoroughfare: String? { get }
  var subThoroughfare: String? { get }
  var locality: String? { get }
  var subLocality: String? { get }
  var administrativeArea: String? { get }
  var subAdministrativeArea: String? { get }
  var postalCode: String? { get }
  var isOcountryCode: String? { get }
  var country: String? { get }
  var inlandWater: String? { get }
  var ocean: String? { get }
  var areasOfInterest: [String]? { get }
  init()
  @available(tvOS 5.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 4.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 4.0, *)
  var identifier: String { get }
  @available(tvOS 7.0, *)
  var notifyOnEntry: Bool
  @available(tvOS 7.0, *)
  var notifyOnExit: Bool
  init()
  @available(tvOS 4.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 4.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
