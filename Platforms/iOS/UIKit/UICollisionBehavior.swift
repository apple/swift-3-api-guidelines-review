
@available(iOS 7.0, *)
struct UICollisionBehaviorMode : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Items: UICollisionBehaviorMode { get }
  static var Boundaries: UICollisionBehaviorMode { get }
  static var Everything: UICollisionBehaviorMode { get }
}
protocol UICollisionBehaviorDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem, atPoint p: CGPoint)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, atPoint p: CGPoint)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?)
}
@available(iOS 7.0, *)
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehaviorMode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundaryWithInsets(insets: UIEdgeInsets)
  func addBoundaryWithIdentifier(identifier: NSCopying, forPath bezierPath: UIBezierPath)
  func addBoundaryWithIdentifier(identifier: NSCopying, fromPoint p1: CGPoint, toPoint p2: CGPoint)
  func boundaryWithIdentifier(identifier: NSCopying) -> UIBezierPath?
  func removeBoundaryWithIdentifier(identifier: NSCopying)
  var boundaryIdentifiers: [NSCopying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
  convenience init()
}
