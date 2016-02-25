
@available(iOS 7.0, *)
class MKMapCamera : NSObject, NSSecureCoding, NSCopying {
  var centerCoordinate: CLLocationCoordinate2D
  var heading: CLLocationDirection
  var pitch: CGFloat
  var altitude: CLLocationDistance
  convenience init(lookingAtCenterCoordinate centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude eyeAltitude: CLLocationDistance)
  @available(iOS 9.0, *)
  convenience init(lookingAtCenterCoordinate centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch pitch: CGFloat, heading heading: CLLocationDirection)
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 7.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
