
@available(iOS 7.0, *)
enum UIPushBehaviorMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Continuous
  case Instantaneous
}
@available(iOS 7.0, *)
class UIPushBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem], mode: UIPushBehaviorMode)
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  func targetOffsetFromCenterForItem(item: UIDynamicItem) -> UIOffset
  func setTargetOffsetFromCenter(o: UIOffset, forItem item: UIDynamicItem)
  var mode: UIPushBehaviorMode { get }
  var active: Bool
  var angle: CGFloat
  var magnitude: CGFloat
  var pushDirection: CGVector
  func setAngle(angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
