
@available(OSX 10.9, *)
class MKOverlayPathRenderer : MKOverlayRenderer {
  var fillColor: NSColor?
  var strokeColor: NSColor?
  var lineWidth: CGFloat
  var lineJoin: CGLineJoin
  var lineCap: CGLineCap
  var miterLimit: CGFloat
  var lineDashPhase: CGFloat
  var lineDashPattern: [NSNumber]?
  func createPath()
  var path: CGPath!
  func invalidatePath()
  func applyStrokePropertiesToContext(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func applyFillPropertiesToContext(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func strokePath(path: CGPath, inContext context: CGContext)
  func fillPath(path: CGPath, inContext context: CGContext)
  init(overlay: MKOverlay)
  convenience init()
}
