
@available(iOS 4.0, *)
class MKCircle : MKShape, MKOverlay {
  convenience init(center coord: CLLocationCoordinate2D, radius radius: CLLocationDistance)
  convenience init(mapRect mapRect: MKMapRect)
  var radius: CLLocationDistance { get }
  var boundingMapRect: MKMapRect { get }
  @available(iOS 4.0, *)
  func intersects(_ mapRect: MKMapRect) -> Bool
  @available(iOS 7.0, *)
  func canReplaceMapContent() -> Bool
}
