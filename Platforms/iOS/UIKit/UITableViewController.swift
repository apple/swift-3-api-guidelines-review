
@available(iOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style style: UITableViewStyle)
  var tableView: UITableView!
  @available(iOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 6.0, *)
  var refreshControl: UIRefreshControl?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: NSIndexPath) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: NSIndexPath) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willSelectRowAt indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: NSIndexPath)
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(iOS 3.0, *)
  func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: NSIndexPath) -> String?
  @available(iOS 8.0, *)
  func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: NSIndexPath) -> [UITableViewRowAction]?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: NSIndexPath) -> Int
  @available(iOS 5.0, *)
  func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 5.0, *)
  func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, canFocusRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedView(in tableView: UITableView) -> NSIndexPath?
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
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(iOS 2.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  func scrollViewShouldScroll(toTop scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  func scrollViewDidScroll(toTop scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  func numberOfSections(in tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canEditRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canMoveRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func sectionIndexTitles(for tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
