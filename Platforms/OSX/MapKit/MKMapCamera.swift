
@available(OSX 10.9, *)
class MKMapCamera : NSObject, NSSecureCoding, NSCopying {
  var centerCoordinate: CLLocationCoordinate2D
  var heading: CLLocationDirection
  var pitch: CGFloat
  var altitude: CLLocationDistance
  convenience init(lookingAtCenterCoordinate centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude: CLLocationDistance)
  @available(OSX 10.11, *)
  convenience init(lookingAtCenterCoordinate centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch: CGFloat, heading: CLLocationDirection)
  init()
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.9, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
