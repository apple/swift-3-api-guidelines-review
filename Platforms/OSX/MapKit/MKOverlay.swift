
protocol MKOverlay : MKAnnotation {
  var coordinate: CLLocationCoordinate2D { get }
  var boundingMapRect: MKMapRect { get }
  optional func intersects(mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  optional func canReplaceMapContent() -> Bool
}
