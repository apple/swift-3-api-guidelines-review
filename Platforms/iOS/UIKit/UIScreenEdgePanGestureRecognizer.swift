
@available(iOS 7.0, *)
class UIScreenEdgePanGestureRecognizer : UIPanGestureRecognizer {
  var edges: UIRectEdge
  init(target: AnyObject?, action: Selector)
  convenience init()
}
