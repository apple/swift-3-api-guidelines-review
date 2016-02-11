
protocol UIDynamicAnimatorDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  optional func dynamicAnimatorWillResume(animator: UIDynamicAnimator)
  @available(iOS 7.0, *)
  optional func dynamicAnimatorDidPause(animator: UIDynamicAnimator)
}
@available(iOS 7.0, *)
class UIDynamicAnimator : Object {
  init(referenceView view: UIView)
  func addBehavior(behavior: UIDynamicBehavior)
  func removeBehavior(behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func items(in rect: CGRect) -> [UIDynamicItem]
  func updateItem(usingCurrentState item: UIDynamicItem)
  var isRunning: Bool { get }
  func elapsedTime() -> TimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCell(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOf(kind kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOf(kind decorationViewKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
}
