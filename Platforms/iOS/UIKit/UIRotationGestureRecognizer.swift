
@available(iOS 3.2, *)
class UIRotationGestureRecognizer : UIGestureRecognizer {
  var rotation: CGFloat
  var velocity: CGFloat { get }
  init(target: AnyObject?, action: Selector)
  convenience init()
}
