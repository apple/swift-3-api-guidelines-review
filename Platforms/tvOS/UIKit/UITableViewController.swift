
@available(tvOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style style: UITableViewStyle)
  var tableView: UITableView!
  @available(tvOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 3.0, *)
  func tableView(_ tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 3.0, *)
  func tableView(_ tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(tvOS 5.0, *)
  func tableView(_ tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 5.0, *)
  func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  func tableView(_ tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  func tableView(_ tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func tableView(_ tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func tableView(_ tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedViewInTableView(_ tableView: UITableView) -> NSIndexPath?
  @available(tvOS 2.0, *)
  func scrollViewDidScroll(_ scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  func scrollViewDidZoom(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 2.0, *)
  func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 2.0, *)
  func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func viewForZoomingInScrollView(_ scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 2.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  func scrollViewDidScrollToTop(_ scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  func numberOfSectionsInTableView(_ tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
