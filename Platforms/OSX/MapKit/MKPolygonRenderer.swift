
@available(OSX 10.9, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon polygon: MKPolygon)
  var polygon: MKPolygon { get }
  init(overlay overlay: MKOverlay)
  convenience init()
}
