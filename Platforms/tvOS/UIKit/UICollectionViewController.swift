
@available(tvOS 6.0, *)
class UICollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  init(collectionViewLayout layout: UICollectionViewLayout)
  var collectionView: UICollectionView?
  var clearsSelectionOnViewWillAppear: Bool
  @available(tvOS 7.0, *)
  var useLayoutToLayoutNavigationTransitions: Bool
  @available(tvOS 7.0, *)
  var collectionViewLayout: UICollectionViewLayout { get }
  @available(tvOS 9.0, *)
  var installsStandardGestureForInteractiveMovement: Bool
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 7.0, *)
  func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(tvOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> NSIndexPath?
  @available(tvOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(tvOS 6.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 6.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 6.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(tvOS 6.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(tvOS 6.0, *)
  func scrollViewShouldScroll(toTop scrollView: UIScrollView) -> Bool
  @available(tvOS 6.0, *)
  func scrollViewDidScroll(toTop scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: NSIndexPath) -> UICollectionViewCell
  @available(tvOS 6.0, *)
  func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
