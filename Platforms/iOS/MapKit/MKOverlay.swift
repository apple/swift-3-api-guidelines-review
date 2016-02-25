
protocol MKOverlay : MKAnnotation {
  var boundingMapRect: MKMapRect { get }
  optional func intersectsMapRect(_ mapRect: MKMapRect) -> Bool
  @available(iOS 7.0, *)
  optional func canReplaceMapContent() -> Bool
}
