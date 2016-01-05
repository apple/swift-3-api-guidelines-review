
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
@available(OSX 10.10, *)
class CLCircularRegion : CLRegion {
  init(center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
  var center: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  func contains(coordinate: CLLocationCoordinate2D) -> Bool
  @available(OSX, introduced=10.7, deprecated=10.10)
  init(circularRegionWithCenter center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
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
@available(OSX 10.7, *)
let kCLErrorUserInfoAlternateRegionKey: String
let kCLErrorDomain: String
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, NSError?) -> Void
@available(OSX 10.8, *)
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
@available(OSX 10.7, *)
class CLHeading : NSObject, NSCopying, NSSecureCoding {
  var magneticHeading: CLLocationDirection { get }
  var trueHeading: CLLocationDirection { get }
  var headingAccuracy: CLLocationDirection { get }
  var x: CLHeadingComponentValue { get }
  var y: CLHeadingComponentValue { get }
  var z: CLHeadingComponentValue { get }
  @NSCopying var timestamp: NSDate { get }
  var description: String { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
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
  func distanceFrom(location: CLLocation) -> CLLocationDistance
  init()
  @available(OSX 10.6, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
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
  case Authorized
}
enum CLActivityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Other
  case AutomotiveNavigation
  case Fitness
  case OtherNavigation
}
@available(OSX 10.6, *)
class CLLocationManager : NSObject {
  @available(OSX 10.7, *)
  class func locationServicesEnabled() -> Bool
  @available(OSX 10.7, *)
  class func headingAvailable() -> Bool
  @available(OSX 10.7, *)
  class func significantLocationChangeMonitoringAvailable() -> Bool
  @available(OSX 10.10, *)
  class func isMonitoringAvailableFor(regionClass: AnyClass) -> Bool
  @available(OSX, introduced=10.8, deprecated=10.10)
  class func regionMonitoringAvailable() -> Bool
  @available(OSX, introduced=10.8, deprecated=10.10)
  class func regionMonitoringEnabled() -> Bool
  @available(OSX 10.7, *)
  class func authorizationStatus() -> CLAuthorizationStatus
  unowned(unsafe) var delegate: @sil_unmanaged CLLocationManagerDelegate?
  @available(OSX 10.7, *)
  var purpose: String?
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @NSCopying var location: CLLocation? { get }
  @available(OSX 10.8, *)
  var maximumRegionMonitoringDistance: CLLocationDistance { get }
  @available(OSX 10.8, *)
  var monitoredRegions: Set<CLRegion> { get }
  func startUpdatingLocation()
  func stopUpdatingLocation()
  @available(OSX 10.7, *)
  func startMonitoringSignificantLocationChanges()
  @available(OSX 10.7, *)
  func stopMonitoringSignificantLocationChanges()
  @available(OSX 10.8, *)
  func stopMonitoringFor(region: CLRegion)
  @available(OSX 10.8, *)
  func startMonitoringFor(region: CLRegion)
  @available(OSX 10.10, *)
  func requestStateFor(region: CLRegion)
  @available(OSX 10.9, *)
  class func deferredLocationUpdatesAvailable() -> Bool
  init()
}
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(OSX 10.6, *)
  optional func locationManager(manager: CLLocationManager, didUpdateTo newLocation: CLLocation, from oldLocation: CLLocation)
  @available(OSX 10.9, *)
  optional func locationManager(manager: CLLocationManager, didUpdateLocations locations: [AnyObject])
  @available(OSX 10.10, *)
  optional func locationManager(manager: CLLocationManager, didDetermineState state: CLRegionState, forRegion region: CLRegion)
  @available(OSX 10.8, *)
  optional func locationManager(manager: CLLocationManager, didEnter region: CLRegion)
  @available(OSX 10.8, *)
  optional func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion)
  @available(OSX 10.6, *)
  optional func locationManager(manager: CLLocationManager, didFailWith error: NSError)
  @available(OSX 10.8, *)
  optional func locationManager(manager: CLLocationManager, monitoringDidFailFor region: CLRegion?, withError error: NSError)
  @available(OSX 10.7, *)
  optional func locationManager(manager: CLLocationManager, didChange status: CLAuthorizationStatus)
  @available(OSX 10.8, *)
  optional func locationManager(manager: CLLocationManager, didStartMonitoringFor region: CLRegion)
  @available(OSX 10.9, *)
  optional func locationManager(manager: CLLocationManager, didFinishDeferredUpdatesWith error: NSError?)
}
@available(OSX 10.8, *)
class CLPlacemark : NSObject, NSCopying, NSSecureCoding {
  init(placemark: CLPlacemark)
  @NSCopying var location: CLLocation? { get }
  @NSCopying var region: CLRegion? { get }
  @available(OSX 10.11, *)
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
  @available(OSX 10.8, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
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
  var isNotifyOnEntry: Bool
  @available(OSX 10.10, *)
  var isNotifyOnExit: Bool
  @available(OSX, introduced=10.7, deprecated=10.10)
  func contains(coordinate: CLLocationCoordinate2D) -> Bool
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
