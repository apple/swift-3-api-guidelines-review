
@available(tvOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  func translationInView(view: UIView?) -> CGPoint
  func setTranslation(translation: CGPoint, inView view: UIView?)
  func velocityInView(view: UIView?) -> CGPoint
  init(target: AnyObject?, action: Selector)
  convenience init()
}
