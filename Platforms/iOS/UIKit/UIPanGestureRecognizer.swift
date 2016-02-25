
@available(iOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  var minimumNumberOfTouches: Int
  var maximumNumberOfTouches: Int
  func translationInView(_ view: UIView?) -> CGPoint
  func setTranslation(_ translation: CGPoint, inView view: UIView?)
  func velocityInView(_ view: UIView?) -> CGPoint
}
