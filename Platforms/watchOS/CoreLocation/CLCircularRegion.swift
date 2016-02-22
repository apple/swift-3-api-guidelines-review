
@available(watchOS 2.0, *)
class CLCircularRegion : CLRegion {
  init(center center: CLLocationCoordinate2D, radius radius: CLLocationDistance, identifier identifier: String)
  var center: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  func contains(_ coordinate: CLLocationCoordinate2D) -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0)
  init(circularRegionWithCenter center: CLLocationCoordinate2D, radius radius: CLLocationDistance, identifier identifier: String)
  init()
  init?(coder aDecoder: NSCoder)
}
