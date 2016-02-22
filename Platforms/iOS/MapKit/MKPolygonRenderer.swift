
@available(iOS 7.0, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon polygon: MKPolygon)
  var polygon: MKPolygon { get }
  init(overlay overlay: MKOverlay)
  convenience init()
}
