
@available(OSX 10.9, *)
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline: MKPolyline)
  var polyline: MKPolyline { get }
  init(overlay: MKOverlay)
  convenience init()
}
