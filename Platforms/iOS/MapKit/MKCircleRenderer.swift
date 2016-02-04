
@available(iOS 7.0, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle: MKCircle)
  var circle: MKCircle { get }
  init(overlay: MKOverlay)
  convenience init()
}
