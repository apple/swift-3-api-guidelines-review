
@available(tvOS 7.0, *)
class CLCircularRegion : CLRegion {
  init(center center: CLLocationCoordinate2D, radius radius: CLLocationDistance, identifier identifier: String)
  var center: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  func contains(_ coordinate: CLLocationCoordinate2D) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
