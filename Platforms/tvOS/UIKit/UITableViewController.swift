
@available(tvOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style style: UITableViewStyle)
  var tableView: UITableView!
  @available(tvOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, willSelectRowAt indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 3.0, *)
  func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: NSIndexPath)
  @available(tvOS 3.0, *)
  func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: NSIndexPath) -> Int
  @available(tvOS 5.0, *)
  func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 5.0, *)
  func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  func tableView(_ tableView: UITableView, canFocusRowAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedView(in tableView: UITableView) -> NSIndexPath?
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
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?)
  @available(tvOS 2.0, *)
  func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  func scrollViewShouldScroll(toTop scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  func scrollViewDidScroll(toTop scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  func numberOfSections(in tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, canEditRowAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, canMoveRowAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
