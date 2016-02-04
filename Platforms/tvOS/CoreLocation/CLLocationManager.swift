
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
class CLLocationManager : Object {
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
