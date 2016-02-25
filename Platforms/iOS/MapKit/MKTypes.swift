
@available(iOS 3.0, *)
enum MKMapType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Standard
  case Satellite
  case Hybrid
  @available(iOS 9.0, *)
  case SatelliteFlyover
  @available(iOS 9.0, *)
  case HybridFlyover
}
let MKErrorDomain: String
@available(iOS 3.0, *)
enum MKErrorCode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case ServerFailure
  case LoadingThrottled
  case PlacemarkNotFound
  @available(iOS 7.0, *)
  case DirectionsNotFound
}
