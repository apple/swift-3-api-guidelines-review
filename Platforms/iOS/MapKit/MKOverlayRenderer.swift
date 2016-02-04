
@available(iOS 7.0, *)
class MKOverlayRenderer : Object {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func pointFor(mapPoint: MKMapPoint) -> CGPoint
  func mapPointFor(point: CGPoint) -> MKMapPoint
  func rectFor(mapRect: MKMapRect) -> CGRect
  func mapRectFor(rect: CGRect) -> MKMapRect
  func canDraw(mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func draw(mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayIn(mapRect: MKMapRect)
  func setNeedsDisplayIn(mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
  convenience init()
}
