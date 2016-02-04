
@available(tvOS 7.0, *)
class UIDynamicItemBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var elasticity: CGFloat
  var friction: CGFloat
  var density: CGFloat
  var resistance: CGFloat
  var angularResistance: CGFloat
  @available(tvOS 9.0, *)
  var charge: CGFloat
  @available(tvOS 9.0, *)
  var anchored: Bool
  var allowsRotation: Bool
  func addLinearVelocity(velocity: CGPoint, forItem item: UIDynamicItem)
  func linearVelocityForItem(item: UIDynamicItem) -> CGPoint
  func addAngularVelocity(velocity: CGFloat, forItem item: UIDynamicItem)
  func angularVelocityForItem(item: UIDynamicItem) -> CGFloat
  convenience init()
}
