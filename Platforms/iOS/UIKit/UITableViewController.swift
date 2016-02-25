
@available(iOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style style: UITableViewStyle)
  var tableView: UITableView!
  @available(iOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 6.0, *)
  var refreshControl: UIRefreshControl?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String?
  @available(iOS 8.0, *)
  func tableView(_ tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(iOS 5.0, *)
  func tableView(_ tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 5.0, *)
  func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  func tableView(_ tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedViewInTableView(_ tableView: UITableView) -> NSIndexPath?
  @available(iOS 2.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func viewForZoomingInScrollView(_ scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 2.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  func numberOfSectionsInTableView(_ tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func sectionIndexTitlesForTableView(_ tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
