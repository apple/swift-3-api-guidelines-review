
@available(iOS 7.0, *)
class MKOverlayRenderer : NSObject {
  init(overlay overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func pointForMapPoint(_ mapPoint: MKMapPoint) -> CGPoint
  func mapPointForPoint(_ point: CGPoint) -> MKMapPoint
  func rectForMapRect(_ mapRect: MKMapRect) -> CGRect
  func mapRectForRect(_ rect: CGRect) -> MKMapRect
  func canDrawMapRect(_ mapRect: MKMapRect, zoomScale zoomScale: MKZoomScale) -> Bool
  func drawMapRect(_ mapRect: MKMapRect, zoomScale zoomScale: MKZoomScale, inContext context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayInMapRect(_ mapRect: MKMapRect)
  func setNeedsDisplayInMapRect(_ mapRect: MKMapRect, zoomScale zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
}
