
@available(OSX 10.9, *)
class MKOverlayRenderer : NSObject {
  init(overlay overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func point(for mapPoint: MKMapPoint) -> CGPoint
  func mapPoint(for point: CGPoint) -> MKMapPoint
  func rect(for mapRect: MKMapRect) -> CGRect
  func mapRect(for rect: CGRect) -> MKMapRect
  func canDraw(_ mapRect: MKMapRect, zoomScale zoomScale: MKZoomScale) -> Bool
  func draw(_ mapRect: MKMapRect, zoomScale zoomScale: MKZoomScale, in context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayIn(_ mapRect: MKMapRect)
  func setNeedsDisplayIn(_ mapRect: MKMapRect, zoomScale zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
}
@available(OSX 10.9, *)
func MKRoadWidthAtZoomScale(_ zoomScale: MKZoomScale) -> CGFloat
