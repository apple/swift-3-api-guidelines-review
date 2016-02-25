
@available(iOS 6.0, *)
class EKStructuredLocation : EKObject, NSCopying {
  convenience init(title title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  @available(iOS 6.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
