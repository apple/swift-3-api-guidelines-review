
@available(tvOS 7.0, *)
struct UICollisionBehaviorMode : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var items: UICollisionBehaviorMode { get }
  static var boundaries: UICollisionBehaviorMode { get }
  static var everything: UICollisionBehaviorMode { get }
}
protocol UICollisionBehaviorDelegate : ObjectProtocol {
  @available(tvOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, with item2: UIDynamicItem, at p: CGPoint)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactFor item1: UIDynamicItem, with item2: UIDynamicItem)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: Copying?, at p: CGPoint)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: Copying?)
}
@available(tvOS 7.0, *)
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehaviorMode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundaryWith(insets: UIEdgeInsets)
  func addBoundary(identifier identifier: Copying, for bezierPath: UIBezierPath)
  func addBoundary(identifier identifier: Copying, from p1: CGPoint, to p2: CGPoint)
  func boundary(identifier identifier: Copying) -> UIBezierPath?
  func removeBoundary(identifier identifier: Copying)
  var boundaryIdentifiers: [Copying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
  convenience init()
}
