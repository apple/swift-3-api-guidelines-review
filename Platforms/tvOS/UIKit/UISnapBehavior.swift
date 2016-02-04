
@available(tvOS 7.0, *)
class UISnapBehavior : UIDynamicBehavior {
  init(item: UIDynamicItem, snapToPoint point: CGPoint)
  @available(tvOS 9.0, *)
  var snapPoint: CGPoint
  var damping: CGFloat
  convenience init()
}
