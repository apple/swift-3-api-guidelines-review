
@available(OSX 10.9, *)
class MKOverlayPathRenderer : MKOverlayRenderer {
  var fillColor: NSColor?
  var strokeColor: NSColor?
  var lineWidth: CGFloat
  var lineJoin: CGLineJoin
  var lineCap: CGLineCap
  var miterLimit: CGFloat
  var lineDashPhase: CGFloat
  var lineDashPattern: [Number]?
  func createPath()
  var path: CGPath!
  func invalidatePath()
  func applyStrokeProperties(to context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func applyFillProperties(to context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func strokePath(path: CGPath, in context: CGContext)
  func fillPath(path: CGPath, in context: CGContext)
  init(overlay: MKOverlay)
  convenience init()
}
