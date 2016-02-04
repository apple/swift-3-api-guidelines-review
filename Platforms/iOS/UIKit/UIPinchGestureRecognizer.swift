
@available(iOS 3.2, *)
class UIPinchGestureRecognizer : UIGestureRecognizer {
  var scale: CGFloat
  var velocity: CGFloat { get }
  init(target: AnyObject?, action: Selector)
  convenience init()
}
