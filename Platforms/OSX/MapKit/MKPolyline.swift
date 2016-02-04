
@available(OSX 10.9, *)
class MKPolyline : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  init()
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(OSX 10.9, *)
  var boundingMapRect: MKMapRect { get }
  @available(OSX 10.9, *)
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  func canReplaceMapContent() -> Bool
}
