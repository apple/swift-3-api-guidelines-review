
@available(tvOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  var tableView: UITableView!
  @available(tvOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  convenience init()
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  @available(tvOS 3.0, *)
  func tableView(tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  @available(tvOS 3.0, *)
  func tableView(tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath?
  @available(tvOS 2.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 2.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 2.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 2.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  func scrollViewShouldScroll(toTop scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  func scrollViewDidScroll(toTop scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  func numberOfSections(in tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
