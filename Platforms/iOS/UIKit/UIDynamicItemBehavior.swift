
@available(iOS 7.0, *)
class UIDynamicItemBehavior : UIDynamicBehavior {
  init(items items: [UIDynamicItem])
  func addItem(_ item: UIDynamicItem)
  func removeItem(_ item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var elasticity: CGFloat
  var friction: CGFloat
  var density: CGFloat
  var resistance: CGFloat
  var angularResistance: CGFloat
  @available(iOS 9.0, *)
  var charge: CGFloat
  @available(iOS 9.0, *)
  var anchored: Bool
  var allowsRotation: Bool
  func addLinearVelocity(_ velocity: CGPoint, forItem item: UIDynamicItem)
  func linearVelocityForItem(_ item: UIDynamicItem) -> CGPoint
  func addAngularVelocity(_ velocity: CGFloat, forItem item: UIDynamicItem)
  func angularVelocityForItem(_ item: UIDynamicItem) -> CGFloat
}
