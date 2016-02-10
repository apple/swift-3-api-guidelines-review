
@available(iOS 7.0, *)
class MKMapCamera : Object, SecureCoding, Copying {
  var centerCoordinate: CLLocationCoordinate2D
  var heading: CLLocationDirection
  var pitch: CGFloat
  var altitude: CLLocationDistance
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude: CLLocationDistance)
  @available(iOS 9.0, *)
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch: CGFloat, heading: CLLocationDirection)
  init()
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 7.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
