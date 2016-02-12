
@available(OSX 10.9, *)
class MKPolygon : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int, interiorPolygons: [MKPolygon]?)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int, interiorPolygons: [MKPolygon]?)
  var interiorPolygons: [MKPolygon]? { get }
  init()
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(OSX 10.9, *)
  var boundingMapRect: MKMapRect { get }
  @available(OSX 10.9, *)
  func intersects(mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  func canReplaceMapContent() -> Bool
}
