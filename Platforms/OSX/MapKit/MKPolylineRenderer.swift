
@available(OSX 10.9, *)
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline polyline: MKPolyline)
  var polyline: MKPolyline { get }
  init(overlay overlay: MKOverlay)
  convenience init()
}
