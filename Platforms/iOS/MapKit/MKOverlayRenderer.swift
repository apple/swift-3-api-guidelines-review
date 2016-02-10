
@available(iOS 7.0, *)
class MKOverlayRenderer : Object {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func point(forMapPoint mapPoint: MKMapPoint) -> CGPoint
  func mapPoint(forPoint point: CGPoint) -> MKMapPoint
  func rect(forMapRect mapRect: MKMapRect) -> CGRect
  func mapRect(forRect rect: CGRect) -> MKMapRect
  func canDraw(mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func draw(mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayIn(mapRect: MKMapRect)
  func setNeedsDisplayIn(mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
  convenience init()
}
