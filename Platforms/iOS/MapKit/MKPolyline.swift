
@available(iOS 4.0, *)
class MKPolyline : MKMultiPoint, MKOverlay {
  convenience init(points points: UnsafeMutablePointer<MKMapPoint>, count count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count count: Int)
  @available(iOS 4.0, *)
  var boundingMapRect: MKMapRect { get }
  @available(iOS 4.0, *)
  func intersects(_ mapRect: MKMapRect) -> Bool
  @available(iOS 7.0, *)
  func canReplaceMapContent() -> Bool
}
