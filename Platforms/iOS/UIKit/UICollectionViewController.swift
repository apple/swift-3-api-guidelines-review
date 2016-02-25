
@available(iOS 6.0, *)
class UICollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  init(collectionViewLayout layout: UICollectionViewLayout)
  var collectionView: UICollectionView?
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 7.0, *)
  var useLayoutToLayoutNavigationTransitions: Bool
  @available(iOS 7.0, *)
  var collectionViewLayout: UICollectionViewLayout { get }
  @available(iOS 9.0, *)
  var installsStandardGestureForInteractiveMovement: Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  func collectionView(_ collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 7.0, *)
  func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedViewInCollectionView(_ collectionView: UICollectionView) -> NSIndexPath?
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(iOS 6.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 6.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 6.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func viewForZoomingInScrollView(_ scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 6.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 6.0, *)
  func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(iOS 6.0, *)
  func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  @available(iOS 6.0, *)
  func numberOfSectionsInCollectionView(_ collectionView: UICollectionView) -> Int
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
