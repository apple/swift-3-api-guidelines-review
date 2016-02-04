
@available(iOS 6.0, *)
class EKStructuredLocation : EKObject, NSCopying {
  convenience init(title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  init()
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
