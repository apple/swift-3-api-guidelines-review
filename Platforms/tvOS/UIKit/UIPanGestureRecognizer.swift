
@available(tvOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  func translation(in view: UIView?) -> CGPoint
  func setTranslation(_ translation: CGPoint, in view: UIView?)
  func velocity(in view: UIView?) -> CGPoint
}
