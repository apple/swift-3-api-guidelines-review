
@available(iOS 7.0, *)
class UIScreenEdgePanGestureRecognizer : UIPanGestureRecognizer {
  var edges: UIRectEdge
  init(target target: AnyObject?, action action: Selector)
  convenience init()
}
