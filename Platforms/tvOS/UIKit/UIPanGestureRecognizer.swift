
@available(tvOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  func translationIn(view: UIView?) -> CGPoint
  func setTranslation(translation: CGPoint, in view: UIView?)
  func velocityIn(view: UIView?) -> CGPoint
  init(target: AnyObject?, action: Selector)
  convenience init()
}
