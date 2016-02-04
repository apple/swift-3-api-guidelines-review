
@available(iOS 7.0, *)
class MKOverlayPathRenderer : MKOverlayRenderer {
  var fillColor: UIColor?
  var strokeColor: UIColor?
  var lineWidth: CGFloat
  var lineJoin: CGLineJoin
  var lineCap: CGLineCap
  var miterLimit: CGFloat
  var lineDashPhase: CGFloat
  var lineDashPattern: [Number]?
  func createPath()
  var path: CGPath!
  func invalidatePath()
  func applyStrokePropertiesTo(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func applyFillPropertiesTo(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func strokePath(path: CGPath, in context: CGContext)
  func fillPath(path: CGPath, in context: CGContext)
  init(overlay: MKOverlay)
  convenience init()
}
