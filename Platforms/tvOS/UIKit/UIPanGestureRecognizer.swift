
@available(tvOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  func translation(in view: UIView?) -> CGPoint
  func setTranslation(translation: CGPoint, in view: UIView?)
  func velocity(in view: UIView?) -> CGPoint
  init(target: AnyObject?, action: Selector)
  convenience init()
}
