
protocol UIDynamicAnimatorDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func dynamicAnimatorWillResume(animator: UIDynamicAnimator)
  @available(iOS 7.0, *)
  optional func dynamicAnimatorDidPause(animator: UIDynamicAnimator)
}
@available(iOS 7.0, *)
class UIDynamicAnimator : NSObject {
  init(referenceView view: UIView)
  func addBehavior(behavior: UIDynamicBehavior)
  func removeBehavior(behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func items(in rect: CGRect) -> [UIDynamicItem]
  func updateItem(currentState item: UIDynamicItem)
  var isRunning: Bool { get }
  func elapsedTime() -> NSTimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCell(at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryView(ofKind kind: String, at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind decorationViewKind: String, at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
}
