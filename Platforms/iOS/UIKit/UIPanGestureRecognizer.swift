
@available(iOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  var minimumNumberOfTouches: Int
  var maximumNumberOfTouches: Int
  func translation(in view: UIView?) -> CGPoint
  func setTranslation(_ translation: CGPoint, in view: UIView?)
  func velocity(in view: UIView?) -> CGPoint
}
