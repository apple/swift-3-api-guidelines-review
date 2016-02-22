
@available(OSX 10.10, *)
class CLCircularRegion : CLRegion {
  init(center center: CLLocationCoordinate2D, radius radius: CLLocationDistance, identifier identifier: String)
  var center: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  func contains(_ coordinate: CLLocationCoordinate2D) -> Bool
  @available(OSX, introduced=10.7, deprecated=10.10)
  init(circularRegionWithCenter center: CLLocationCoordinate2D, radius radius: CLLocationDistance, identifier identifier: String)
  init()
  init?(coder aDecoder: NSCoder)
}
