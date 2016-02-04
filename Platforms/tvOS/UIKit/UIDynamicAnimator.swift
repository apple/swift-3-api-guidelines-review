
protocol UIDynamicAnimatorDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func dynamicAnimatorWillResume(animator: UIDynamicAnimator)
  @available(tvOS 7.0, *)
  optional func dynamicAnimatorDidPause(animator: UIDynamicAnimator)
}
@available(tvOS 7.0, *)
class UIDynamicAnimator : NSObject {
  init(referenceView view: UIView)
  func addBehavior(behavior: UIDynamicBehavior)
  func removeBehavior(behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func itemsInRect(rect: CGRect) -> [UIDynamicItem]
  func updateItemUsingCurrentState(item: UIDynamicItem)
  var running: Bool { get }
  func elapsedTime() -> NSTimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCellAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(decorationViewKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
}
