
struct UICollectionViewScrollPosition : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: UICollectionViewScrollPosition { get }
  static var Top: UICollectionViewScrollPosition { get }
  static var CenteredVertically: UICollectionViewScrollPosition { get }
  static var Bottom: UICollectionViewScrollPosition { get }
  static var Left: UICollectionViewScrollPosition { get }
  static var CenteredHorizontally: UICollectionViewScrollPosition { get }
  static var Right: UICollectionViewScrollPosition { get }
}
typealias UICollectionViewLayoutInteractiveTransitionCompletion = (Bool, Bool) -> Void
@available(iOS 9.0, *)
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
}
protocol UICollectionViewDataSource : NSObjectProtocol {
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  @available(iOS 6.0, *)
  optional func numberOfSectionsInCollectionView(_ collectionView: UICollectionView) -> Int
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  optional func collectionView(_ collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  optional func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 7.0, *)
  optional func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  optional func indexPathForPreferredFocusedViewInCollectionView(_ collectionView: UICollectionView) -> NSIndexPath?
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
}
@available(iOS 6.0, *)
class UICollectionView : UIScrollView {
  init(frame frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  var collectionViewLayout: UICollectionViewLayout
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  var backgroundView: UIView?
  func registerClass(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func registerNib(_ nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func registerClass(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func registerNib(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  func indexPathsForSelectedItems() -> [NSIndexPath]?
  func selectItemAtIndexPath(_ indexPath: NSIndexPath?, animated animated: Bool, scrollPosition scrollPosition: UICollectionViewScrollPosition)
  func deselectItemAtIndexPath(_ indexPath: NSIndexPath, animated animated: Bool)
  func reloadData()
  func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated animated: Bool)
  @available(iOS 7.0, *)
  func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated animated: Bool, completion completion: ((Bool) -> Void)?)
  @available(iOS 7.0, *)
  func startInteractiveTransitionToCollectionViewLayout(_ layout: UICollectionViewLayout, completion completion: UICollectionViewLayoutInteractiveTransitionCompletion?) -> UICollectionViewTransitionLayout
  @available(iOS 7.0, *)
  func finishInteractiveTransition()
  @available(iOS 7.0, *)
  func cancelInteractiveTransition()
  func numberOfSections() -> Int
  func numberOfItemsInSection(_ section: Int) -> Int
  func layoutAttributesForItemAtIndexPath(_ indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItemAtPoint(_ point: CGPoint) -> NSIndexPath?
  func indexPathForCell(_ cell: UICollectionViewCell) -> NSIndexPath?
  func cellForItemAtIndexPath(_ indexPath: NSIndexPath) -> UICollectionViewCell?
  func visibleCells() -> [UICollectionViewCell]
  func indexPathsForVisibleItems() -> [NSIndexPath]
  @available(iOS 9.0, *)
  func supplementaryViewForElementKind(_ elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  func visibleSupplementaryViewsOfKind(_ elementKind: String) -> [UICollectionReusableView]
  @available(iOS 9.0, *)
  func indexPathsForVisibleSupplementaryElementsOfKind(_ elementKind: String) -> [NSIndexPath]
  func scrollToItemAtIndexPath(_ indexPath: NSIndexPath, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated animated: Bool)
  func insertSections(_ sections: NSIndexSet)
  func deleteSections(_ sections: NSIndexSet)
  func reloadSections(_ sections: NSIndexSet)
  func moveSection(_ section: Int, toSection newSection: Int)
  func insertItemsAtIndexPaths(_ indexPaths: [NSIndexPath])
  func deleteItemsAtIndexPaths(_ indexPaths: [NSIndexPath])
  func reloadItemsAtIndexPaths(_ indexPaths: [NSIndexPath])
  func moveItemAtIndexPath(_ indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  func performBatchUpdates(_ updates: (() -> Void)?, completion completion: ((Bool) -> Void)?)
  @available(iOS 9.0, *)
  func beginInteractiveMovementForItemAtIndexPath(_ indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func updateInteractiveMovementTargetPosition(_ targetPosition: CGPoint)
  @available(iOS 9.0, *)
  func endInteractiveMovement()
  @available(iOS 9.0, *)
  func cancelInteractiveMovement()
  @available(iOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
}
extension NSIndexPath {
  @available(iOS 6.0, *)
  convenience init(forItem item: Int, inSection section: Int)
  @available(iOS 6.0, *)
  var item: Int { get }
}
