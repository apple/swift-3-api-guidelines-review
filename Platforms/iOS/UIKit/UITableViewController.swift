
@available(iOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var tableView: UITableView!
  @available(iOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 6.0, *)
  var refreshControl: UIRefreshControl?
  convenience init()
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 3.0, *)
  func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 3.0, *)
  func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(iOS 3.0, *)
  func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String?
  @available(iOS 8.0, *)
  func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(iOS 5.0, *)
  func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 5.0, *)
  func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 9.0, *)
  func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedViewInTableView(tableView: UITableView) -> NSIndexPath?
  @available(iOS 2.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 2.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  func numberOfSectionsInTableView(tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
