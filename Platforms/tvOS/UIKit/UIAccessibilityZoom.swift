
@available(tvOS 5.0, *)
enum UIAccessibilityZoomType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case insertionPoint
}
@available(tvOS 5.0, *)
func UIAccessibilityZoomFocusChanged(type: UIAccessibilityZoomType, _ frame: CGRect, _ view: UIView)
@available(tvOS 5.0, *)
func UIAccessibilityRegisterGestureConflictWithZoom()
