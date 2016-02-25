
protocol MKOverlay : MKAnnotation {
  var boundingMapRect: MKMapRect { get }
  optional func intersectsMapRect(_ mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  optional func canReplaceMapContent() -> Bool
}
