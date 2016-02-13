
@available(OSX 10.8, *)
class EKStructuredLocation : EKObject, Copying {
  convenience init(title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  init()
  @available(OSX 10.8, *)
  func copy(zone: Zone = nil) -> AnyObject
}
