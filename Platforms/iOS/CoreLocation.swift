
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
@available(iOS 7.0, *)
class CLBeaconRegion : CLRegion {
  init(proximityUUID: NSUUID, identifier: String)
  init(proximityUUID: NSUUID, major: CLBeaconMajorValue, identifier: String)
  init(proximityUUID: NSUUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  func peripheralDataWithMeasuredPower(measuredPower: NSNumber?) -> NSMutableDictionary
  var proximityUUID: NSUUID { get }
  var major: NSNumber? { get }
  var minor: NSNumber? { get }
  var isNotifyEntryStateOnDisplay: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
class CLBeacon : NSObject, NSCopying, NSSecureCoding {
  var proximityUUID: NSUUID { get }
  var major: NSNumber { get }
  var minor: NSNumber { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
  init()
  @available(iOS 7.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
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
@available(iOS 5.0, *)
let kCLErrorUserInfoAlternateRegionKey: String
let kCLErrorDomain: String
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, NSError?) -> Void
@available(iOS 5.0, *)
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
@available(iOS 3.0, *)
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
  @available(iOS 3.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
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
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
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
  func distanceFrom(location: CLLocation) -> CLLocationDistance
  init()
  @available(iOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 2.0, *)
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
  @available(iOS 8.0, *)
  case AuthorizedAlways
  @available(iOS 8.0, *)
  case AuthorizedWhenInUse
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use kCLAuthorizationStatusAuthorizedAlways")
  static var Authorized: CLAuthorizationStatus { get }
}
enum CLActivityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Other
  case AutomotiveNavigation
  case Fitness
  case OtherNavigation
}
@available(iOS 2.0, *)
class CLLocationManager : NSObject {
  @available(iOS 4.0, *)
  class func locationServicesEnabled() -> Bool
  @available(iOS 4.0, *)
  class func headingAvailable() -> Bool
  @available(iOS 4.0, *)
  class func significantLocationChangeMonitoringAvailable() -> Bool
  @available(iOS 7.0, *)
  class func isMonitoringAvailableFor(regionClass: AnyClass) -> Bool
  @available(iOS 7.0, *)
  class func isRangingAvailable() -> Bool
  @available(iOS 4.2, *)
  class func authorizationStatus() -> CLAuthorizationStatus
  unowned(unsafe) var delegate: @sil_unmanaged CLLocationManagerDelegate?
  @available(iOS 6.0, *)
  var activityType: CLActivityType
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @available(iOS 6.0, *)
  var pausesLocationUpdatesAutomatically: Bool
  @available(iOS 9.0, *)
  var allowsBackgroundLocationUpdates: Bool
  @NSCopying var location: CLLocation? { get }
  @available(iOS 3.0, *)
  var headingFilter: CLLocationDegrees
  @available(iOS 4.0, *)
  var headingOrientation: CLDeviceOrientation
  @available(iOS 4.0, *)
  @NSCopying var heading: CLHeading? { get }
  @available(iOS 4.0, *)
  var maximumRegionMonitoringDistance: CLLocationDistance { get }
  @available(iOS 4.0, *)
  var monitoredRegions: Set<CLRegion> { get }
  @available(iOS 7.0, *)
  var rangedRegions: Set<CLRegion> { get }
  @available(iOS 8.0, *)
  func requestWhenInUseAuthorization()
  @available(iOS 8.0, *)
  func requestAlwaysAuthorization()
  func startUpdatingLocation()
  func stopUpdatingLocation()
  @available(iOS 9.0, *)
  func requestLocation()
  @available(iOS 3.0, *)
  func startUpdatingHeading()
  @available(iOS 3.0, *)
  func stopUpdatingHeading()
  @available(iOS 3.0, *)
  func dismissHeadingCalibrationDisplay()
  @available(iOS 4.0, *)
  func startMonitoringSignificantLocationChanges()
  @available(iOS 4.0, *)
  func stopMonitoringSignificantLocationChanges()
  @available(iOS 4.0, *)
  func stopMonitoringFor(region: CLRegion)
  @available(iOS 5.0, *)
  func startMonitoringFor(region: CLRegion)
  @available(iOS 7.0, *)
  func requestStateFor(region: CLRegion)
  @available(iOS 7.0, *)
  func startRangingBeaconsIn(region: CLBeaconRegion)
  @available(iOS 7.0, *)
  func stopRangingBeaconsIn(region: CLBeaconRegion)
  @available(iOS 6.0, *)
  func allowDeferredLocationUpdatesUntilTraveled(distance: CLLocationDistance, timeout: NSTimeInterval)
  @available(iOS 6.0, *)
  func disallowDeferredLocationUpdates()
  @available(iOS 6.0, *)
  class func deferredLocationUpdatesAvailable() -> Bool
  init()
}
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  @available(iOS 3.0, *)
  optional func locationManager(manager: CLLocationManager, didUpdateHeading newHeading: CLHeading)
  @available(iOS 3.0, *)
  optional func locationManagerShouldDisplayHeadingCalibration(manager: CLLocationManager) -> Bool
  @available(iOS 7.0, *)
  optional func locationManager(manager: CLLocationManager, didDetermineState state: CLRegionState, forRegion region: CLRegion)
  @available(iOS 7.0, *)
  optional func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion)
  @available(iOS 7.0, *)
  optional func locationManager(manager: CLLocationManager, rangingBeaconsDidFailFor region: CLBeaconRegion, withError error: NSError)
  @available(iOS 4.0, *)
  optional func locationManager(manager: CLLocationManager, didEnter region: CLRegion)
  @available(iOS 4.0, *)
  optional func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion)
  @available(iOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didFailWith error: NSError)
  @available(iOS 4.0, *)
  optional func locationManager(manager: CLLocationManager, monitoringDidFailFor region: CLRegion?, withError error: NSError)
  @available(iOS 4.2, *)
  optional func locationManager(manager: CLLocationManager, didChange status: CLAuthorizationStatus)
  @available(iOS 5.0, *)
  optional func locationManager(manager: CLLocationManager, didStartMonitoringFor region: CLRegion)
  @available(iOS 6.0, *)
  optional func locationManagerDidPauseLocationUpdates(manager: CLLocationManager)
  @available(iOS 6.0, *)
  optional func locationManagerDidResumeLocationUpdates(manager: CLLocationManager)
  @available(iOS 6.0, *)
  optional func locationManager(manager: CLLocationManager, didFinishDeferredUpdatesWith error: NSError?)
  @available(iOS 8.0, *)
  optional func locationManager(manager: CLLocationManager, didVisit visit: CLVisit)
}
extension CLLocationManager {
  @available(iOS 8.0, *)
  func startMonitoringVisits()
  @available(iOS 8.0, *)
  func stopMonitoringVisits()
}
@available(iOS 5.0, *)
class CLPlacemark : NSObject, NSCopying, NSSecureCoding {
  init(placemark: CLPlacemark)
  @NSCopying var location: CLLocation? { get }
  @NSCopying var region: CLRegion? { get }
  @available(iOS 9.0, *)
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
  @available(iOS 5.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
enum CLRegionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Inside
  case Outside
}
@available(iOS 7.0, *)
enum CLProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Immediate
  case Near
  case Far
}
@available(iOS 4.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 4.0, *)
  var identifier: String { get }
  @available(iOS 7.0, *)
  var isNotifyOnEntry: Bool
  @available(iOS 7.0, *)
  var isNotifyOnExit: Bool
  init()
  @available(iOS 4.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class CLVisit : NSObject, NSSecureCoding, NSCopying {
  @NSCopying var arrivalDate: NSDate { get }
  @NSCopying var departureDate: NSDate { get }
  var coordinate: CLLocationCoordinate2D { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
