
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
  func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 7.0, *)
  func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> NSIndexPath?
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
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
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(iOS 6.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(iOS 6.0, *)
  func scrollViewShouldScroll(toTop scrollView: UIScrollView) -> Bool
  @available(iOS 6.0, *)
  func scrollViewDidScroll(toTop scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: NSIndexPath) -> UICollectionViewCell
  @available(iOS 6.0, *)
  func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(iOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: NSIndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
