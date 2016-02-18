
struct UICollectionViewScrollPosition : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: UICollectionViewScrollPosition { get }
  static var top: UICollectionViewScrollPosition { get }
  static var centeredVertically: UICollectionViewScrollPosition { get }
  static var bottom: UICollectionViewScrollPosition { get }
  static var left: UICollectionViewScrollPosition { get }
  static var centeredHorizontally: UICollectionViewScrollPosition { get }
  static var right: UICollectionViewScrollPosition { get }
}
typealias UICollectionViewLayoutInteractiveTransitionCompletion = (Bool, Bool) -> Void
@available(iOS 9.0, *)
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
  init()
}
protocol UICollectionViewDataSource : ObjectProtocol {
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
  @available(iOS 6.0, *)
  optional func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath)
  @available(iOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  @available(iOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: AnyObject?)
  @available(iOS 7.0, *)
  optional func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  optional func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> IndexPath?
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
}
@available(iOS 6.0, *)
class UICollectionView : UIScrollView {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  init?(coder aDecoder: Coder)
  var collectionViewLayout: UICollectionViewLayout
  weak var delegate: @sil_weak UICollectionViewDelegate?
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  var backgroundView: UIView?
  func register(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func register(nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func register(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func register(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCell(withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryView(ofKind elementKind: String, withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  func indexPathsForSelectedItems() -> [IndexPath]?
  func selectItem(at indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
  func deselectItem(at indexPath: IndexPath, animated: Bool)
  func reloadData()
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool)
  @available(iOS 7.0, *)
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  func startInteractiveTransition(to layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion? = nil) -> UICollectionViewTransitionLayout
  @available(iOS 7.0, *)
  func finishInteractiveTransition()
  @available(iOS 7.0, *)
  func cancelInteractiveTransition()
  func numberOfSections() -> Int
  func numberOfItems(inSection section: Int) -> Int
  func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElement(ofKind kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItem(at point: CGPoint) -> IndexPath?
  func indexPath(for cell: UICollectionViewCell) -> IndexPath?
  func cellForItem(at indexPath: IndexPath) -> UICollectionViewCell?
  func visibleCells() -> [UICollectionViewCell]
  func indexPathsForVisibleItems() -> [IndexPath]
  @available(iOS 9.0, *)
  func supplementaryView(forElementKind elementKind: String, at indexPath: IndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  func visibleSupplementaryViews(ofKind elementKind: String) -> [UICollectionReusableView]
  @available(iOS 9.0, *)
  func indexPathsForVisibleSupplementaryElements(ofKind elementKind: String) -> [IndexPath]
  func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionViewScrollPosition, animated: Bool)
  func insertSections(sections: IndexSet)
  func deleteSections(sections: IndexSet)
  func reloadSections(sections: IndexSet)
  func moveSection(section: Int, toSection newSection: Int)
  func insertItems(at indexPaths: [IndexPath])
  func deleteItems(at indexPaths: [IndexPath])
  func reloadItems(at indexPaths: [IndexPath])
  func moveItem(at indexPath: IndexPath, to newIndexPath: IndexPath)
  func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 9.0, *)
  func beginInteractiveMovementForItem(at indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  func updateInteractiveMovementTargetPosition(targetPosition: CGPoint)
  @available(iOS 9.0, *)
  func endInteractiveMovement()
  @available(iOS 9.0, *)
  func cancelInteractiveMovement()
  @available(iOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
extension IndexPath {
  @available(iOS 6.0, *)
  convenience init(forItem item: Int, inSection section: Int)
  @available(iOS 6.0, *)
  var item: Int { get }
}
