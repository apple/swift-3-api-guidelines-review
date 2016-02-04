
struct UICollectionViewScrollPosition : OptionSetType {
  init(rawValue: UInt)
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
@available(tvOS 9.0, *)
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
  init()
}
protocol UICollectionViewDataSource : NSObjectProtocol {
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  @available(tvOS 6.0, *)
  optional func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 7.0, *)
  optional func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedViewInCollectionView(collectionView: UICollectionView) -> NSIndexPath?
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
}
@available(tvOS 6.0, *)
class UICollectionView : UIScrollView {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  init?(coder aDecoder: NSCoder)
  var collectionViewLayout: UICollectionViewLayout
  weak var delegate: @sil_weak UICollectionViewDelegate?
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  var backgroundView: UIView?
  func registerClass(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func registerNib(nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func registerClass(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func registerNib(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  func indexPathsForSelectedItems() -> [NSIndexPath]?
  func selectItemAtIndexPath(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
  func deselectItemAtIndexPath(indexPath: NSIndexPath, animated: Bool)
  func reloadData()
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool)
  @available(tvOS 7.0, *)
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)?)
  @available(tvOS 7.0, *)
  func startInteractiveTransitionToCollectionViewLayout(layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion?) -> UICollectionViewTransitionLayout
  @available(tvOS 7.0, *)
  func finishInteractiveTransition()
  @available(tvOS 7.0, *)
  func cancelInteractiveTransition()
  func numberOfSections() -> Int
  func numberOfItemsInSection(section: Int) -> Int
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItemAtPoint(point: CGPoint) -> NSIndexPath?
  func indexPathForCell(cell: UICollectionViewCell) -> NSIndexPath?
  func cellForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell?
  func visibleCells() -> [UICollectionViewCell]
  func indexPathsForVisibleItems() -> [NSIndexPath]
  @available(tvOS 9.0, *)
  func supplementaryViewForElementKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [UICollectionReusableView]
  @available(tvOS 9.0, *)
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> [NSIndexPath]
  func scrollToItemAtIndexPath(indexPath: NSIndexPath, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool)
  func insertSections(sections: NSIndexSet)
  func deleteSections(sections: NSIndexSet)
  func reloadSections(sections: NSIndexSet)
  func moveSection(section: Int, toSection newSection: Int)
  func insertItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func deleteItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func reloadItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func moveItemAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)?)
  @available(tvOS 9.0, *)
  func beginInteractiveMovementForItemAtIndexPath(indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func updateInteractiveMovementTargetPosition(targetPosition: CGPoint)
  @available(tvOS 9.0, *)
  func endInteractiveMovement()
  @available(tvOS 9.0, *)
  func cancelInteractiveMovement()
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
extension NSIndexPath {
  @available(tvOS 6.0, *)
  convenience init(forItem item: Int, inSection section: Int)
  @available(tvOS 6.0, *)
  var item: Int { get }
}
