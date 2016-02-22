
@available(iOS 7.0, *)
class MKOverlayRenderer : NSObject {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func point(for mapPoint: MKMapPoint) -> CGPoint
  func mapPoint(for point: CGPoint) -> MKMapPoint
  func rect(for mapRect: MKMapRect) -> CGRect
  func mapRect(for rect: CGRect) -> MKMapRect
  func canDraw(mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func draw(mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayIn(mapRect: MKMapRect)
  func setNeedsDisplayIn(mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
  convenience init()
}
