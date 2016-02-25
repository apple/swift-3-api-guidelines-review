
@available(OSX 10.9, *)
class MKMapCamera : NSObject, NSSecureCoding, NSCopying {
  var centerCoordinate: CLLocationCoordinate2D
  var heading: CLLocationDirection
  var pitch: CGFloat
  var altitude: CLLocationDistance
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude eyeAltitude: CLLocationDistance)
  @available(OSX 10.11, *)
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch pitch: CGFloat, heading heading: CLLocationDirection)
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.9, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
