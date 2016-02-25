
@available(OSX 10.9, *)
class MKPolyline : MKMultiPoint, MKOverlay {
  convenience init(points points: UnsafeMutablePointer<MKMapPoint>, count count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count count: Int)
  @available(OSX 10.9, *)
  var boundingMapRect: MKMapRect { get }
  @available(OSX 10.9, *)
  func intersects(_ mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  func canReplaceMapContent() -> Bool
}
