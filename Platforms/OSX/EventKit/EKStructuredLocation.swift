
@available(OSX 10.8, *)
class EKStructuredLocation : EKObject, NSCopying {
  convenience init(title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
