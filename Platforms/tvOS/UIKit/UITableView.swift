
enum UITableViewStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case Grouped
}
enum UITableViewScrollPosition : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Top
  case Middle
  case Bottom
}
enum UITableViewRowAnimation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Fade
  case Right
  case Left
  case Top
  case Bottom
  case None
  case Middle
  case Automatic
}
@available(tvOS 5.0, *)
let UITableViewAutomaticDimension: CGFloat
@available(tvOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
}
protocol UITableViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 3.0, *)
  optional func tableView(_ tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 3.0, *)
  optional func tableView(_ tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(tvOS 5.0, *)
  optional func tableView(_ tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(_ tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  optional func tableView(_ tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(_ tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(_ tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedViewInTableView(_ tableView: UITableView) -> NSIndexPath?
}
let UITableViewSelectionDidChangeNotification: String
@available(tvOS 2.0, *)
class UITableView : UIScrollView, NSCoding {
  init(frame frame: CGRect, style style: UITableViewStyle)
  var style: UITableViewStyle { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedRowHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedSectionHeaderHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedSectionFooterHeight: CGFloat
  @available(tvOS 7.0, *)
  var separatorInset: UIEdgeInsets
  @available(tvOS 3.2, *)
  var backgroundView: UIView?
  func reloadData()
  @available(tvOS 3.0, *)
  func reloadSectionIndexTitles()
  var numberOfSections: Int { get }
  func numberOfRowsInSection(_ section: Int) -> Int
  func rectForSection(_ section: Int) -> CGRect
  func rectForHeaderInSection(_ section: Int) -> CGRect
  func rectForFooterInSection(_ section: Int) -> CGRect
  func rectForRowAtIndexPath(_ indexPath: NSIndexPath) -> CGRect
  func indexPathForRowAtPoint(_ point: CGPoint) -> NSIndexPath?
  func indexPathForCell(_ cell: UITableViewCell) -> NSIndexPath?
  func indexPathsForRowsInRect(_ rect: CGRect) -> [NSIndexPath]?
  func cellForRowAtIndexPath(_ indexPath: NSIndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [NSIndexPath]? { get }
  @available(tvOS 6.0, *)
  func headerViewForSection(_ section: Int) -> UITableViewHeaderFooterView?
  @available(tvOS 6.0, *)
  func footerViewForSection(_ section: Int) -> UITableViewHeaderFooterView?
  func scrollToRowAtIndexPath(_ indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated animated: Bool)
  func scrollToNearestSelectedRowAtScrollPosition(_ scrollPosition: UITableViewScrollPosition, animated animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(_ sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(_ sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadSections(_ sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveSection(_ section: Int, toSection newSection: Int)
  func insertRowsAtIndexPaths(_ indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRowsAtIndexPaths(_ indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadRowsAtIndexPaths(_ indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveRowAtIndexPath(_ indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  var editing: Bool
  func setEditing(_ editing: Bool, animated animated: Bool)
  @available(tvOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: NSIndexPath? { get }
  @available(tvOS 5.0, *)
  var indexPathsForSelectedRows: [NSIndexPath]? { get }
  func selectRowAtIndexPath(_ indexPath: NSIndexPath?, animated animated: Bool, scrollPosition scrollPosition: UITableViewScrollPosition)
  func deselectRowAtIndexPath(_ indexPath: NSIndexPath, animated animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  @available(tvOS 6.0, *)
  var sectionIndexColor: UIColor?
  @available(tvOS 7.0, *)
  var sectionIndexBackgroundColor: UIColor?
  @available(tvOS 6.0, *)
  var sectionIndexTrackingBackgroundColor: UIColor?
  @available(tvOS 9.0, *)
  var cellLayoutMarginsFollowReadableWidth: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCellWithIdentifier(_ identifier: String) -> UITableViewCell?
  @available(tvOS 6.0, *)
  func dequeueReusableCellWithIdentifier(_ identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 6.0, *)
  func dequeueReusableHeaderFooterViewWithIdentifier(_ identifier: String) -> UITableViewHeaderFooterView?
  @available(tvOS 5.0, *)
  func registerNib(_ nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerClass(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerNib(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerClass(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
}
protocol UITableViewDataSource : NSObjectProtocol {
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  optional func numberOfSectionsInTableView(_ tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
extension NSIndexPath {
  convenience init(forRow row: Int, inSection section: Int)
  var section: Int { get }
  var row: Int { get }
}
