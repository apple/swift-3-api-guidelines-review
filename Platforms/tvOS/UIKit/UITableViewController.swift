
@available(tvOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var tableView: UITableView!
  @available(tvOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  convenience init()
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 3.0, *)
  func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 3.0, *)
  func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedViewInTableView(tableView: UITableView) -> NSIndexPath?
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
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 2.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  func numberOfSectionsInTableView(tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
