
@available(iOS 4.0, *)
class MKPolyline : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  init()
  @available(iOS 4.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(iOS 4.0, *)
  var boundingMapRect: MKMapRect { get }
  @available(iOS 4.0, *)
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(iOS 7.0, *)
  func canReplaceMapContent() -> Bool
}
