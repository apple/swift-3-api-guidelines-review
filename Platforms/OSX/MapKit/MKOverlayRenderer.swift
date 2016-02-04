
@available(OSX 10.9, *)
class MKOverlayRenderer : NSObject {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func pointForMapPoint(mapPoint: MKMapPoint) -> CGPoint
  func mapPointForPoint(point: CGPoint) -> MKMapPoint
  func rectForMapRect(mapRect: MKMapRect) -> CGRect
  func mapRectForRect(rect: CGRect) -> MKMapRect
  func canDrawMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func drawMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale, inContext context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayInMapRect(mapRect: MKMapRect)
  func setNeedsDisplayInMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
  convenience init()
}
@available(OSX 10.9, *)
func MKRoadWidthAtZoomScale(zoomScale: MKZoomScale) -> CGFloat
