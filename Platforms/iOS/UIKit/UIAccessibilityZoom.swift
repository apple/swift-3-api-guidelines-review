
@available(iOS 5.0, *)
enum UIAccessibilityZoomType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InsertionPoint
}
@available(iOS 5.0, *)
func UIAccessibilityZoomFocusChanged(type: UIAccessibilityZoomType, _ frame: CGRect, _ view: UIView)
@available(iOS 5.0, *)
func UIAccessibilityRegisterGestureConflictWithZoom()
