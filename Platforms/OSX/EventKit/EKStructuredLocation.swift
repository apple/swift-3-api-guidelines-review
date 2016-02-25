
@available(OSX 10.8, *)
class EKStructuredLocation : EKObject, NSCopying {
  convenience init(title title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  @available(OSX 10.8, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
