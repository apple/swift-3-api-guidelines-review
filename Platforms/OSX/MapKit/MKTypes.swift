
@available(OSX 10.9, *)
enum MKMapType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Standard
  case Satellite
  case Hybrid
  @available(OSX 10.11, *)
  case SatelliteFlyover
  @available(OSX 10.11, *)
  case HybridFlyover
}
let MKErrorDomain: String
@available(OSX 10.9, *)
enum MKErrorCode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case ServerFailure
  case LoadingThrottled
  case PlacemarkNotFound
  @available(OSX 10.9, *)
  case DirectionsNotFound
}
