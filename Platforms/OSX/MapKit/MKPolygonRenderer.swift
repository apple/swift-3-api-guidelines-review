
@available(OSX 10.9, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon: MKPolygon)
  var polygon: MKPolygon { get }
  init(overlay: MKOverlay)
  convenience init()
}
