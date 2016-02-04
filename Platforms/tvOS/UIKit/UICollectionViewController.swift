
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
  func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 7.0, *)
  func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedViewInCollectionView(collectionView: UICollectionView) -> NSIndexPath?
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
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
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 6.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 6.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(tvOS 6.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  @available(tvOS 6.0, *)
  func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
