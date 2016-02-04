
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
  class func isMonitoringAvailableForClass(regionClass: AnyClass) -> Bool
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
  func stopMonitoringForRegion(region: CLRegion)
  @available(iOS 5.0, *)
  func startMonitoringForRegion(region: CLRegion)
  @available(iOS 7.0, *)
  func requestStateForRegion(region: CLRegion)
  @available(iOS 7.0, *)
  func startRangingBeaconsInRegion(region: CLBeaconRegion)
  @available(iOS 7.0, *)
  func stopRangingBeaconsInRegion(region: CLBeaconRegion)
  @available(iOS 6.0, *)
  func allowDeferredLocationUpdatesUntilTraveled(distance: CLLocationDistance, timeout: NSTimeInterval)
  @available(iOS 6.0, *)
  func disallowDeferredLocationUpdates()
  @available(iOS 6.0, *)
  class func deferredLocationUpdatesAvailable() -> Bool
  init()
}
