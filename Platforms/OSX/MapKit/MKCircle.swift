
@available(OSX 10.9, *)
class MKCircle : MKShape, MKOverlay {
  convenience init(center coord: CLLocationCoordinate2D, radius radius: CLLocationDistance)
  convenience init(mapRect mapRect: MKMapRect)
  var coordinate: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  var boundingMapRect: MKMapRect { get }
  init()
  @available(OSX 10.9, *)
  func intersects(_ mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  func canReplaceMapContent() -> Bool
}
