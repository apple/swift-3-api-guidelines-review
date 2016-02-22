
@available(iOS 4.0, *)
class MKOverlayView : UIView {
  convenience init(frame frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 4.0, *)
func MKRoadWidthAtZoomScale(_ zoomScale: MKZoomScale) -> CGFloat
