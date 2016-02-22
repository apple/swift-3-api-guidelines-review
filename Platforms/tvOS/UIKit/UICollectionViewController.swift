
@available(tvOS 6.0, *)
class UICollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  init(collectionViewLayout layout: UICollectionViewLayout)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView?
  var clearsSelectionOnViewWillAppear: Bool
  @available(tvOS 7.0, *)
  var useLayoutToLayoutNavigationTransitions: Bool
  @available(tvOS 7.0, *)
  var collectionViewLayout: UICollectionViewLayout { get }
  @available(tvOS 9.0, *)
  var installsStandardGestureForInteractiveMovement: Bool
  convenience init()
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldHighlightItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didHighlightItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didUnhighlightItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldSelectItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldDeselectItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didSelectItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didDeselectItemAt indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  func collectionView(collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 7.0, *)
  func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, canFocusItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> NSIndexPath?
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(tvOS 6.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 6.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 6.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, with view: UIView?)
  @available(tvOS 6.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(tvOS 6.0, *)
  func scrollViewShouldScroll(toTop scrollView: UIScrollView) -> Bool
  @available(tvOS 6.0, *)
  func scrollViewDidScroll(toTop scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: NSIndexPath) -> UICollectionViewCell
  @available(tvOS 6.0, *)
  func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, canMoveItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, moveItemAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
