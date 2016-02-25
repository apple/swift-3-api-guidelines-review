
enum CLDeviceOrientation : Int32 {
  init?(rawValue rawValue: Int32)
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
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
enum CLActivityType : Int {
  init?(rawValue rawValue: Int)
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
  class func isMonitoringAvailableForClass(_ regionClass: AnyClass) -> Bool
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
  func stopMonitoringForRegion(_ region: CLRegion)
  @available(OSX 10.8, *)
  func startMonitoringForRegion(_ region: CLRegion)
  @available(OSX 10.10, *)
  func requestStateForRegion(_ region: CLRegion)
  @available(OSX 10.9, *)
  class func deferredLocationUpdatesAvailable() -> Bool
}
