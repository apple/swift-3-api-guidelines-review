
enum UITableViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case Grouped
}
enum UITableViewScrollPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Top
  case Middle
  case Bottom
}
enum UITableViewRowAnimation : Int {
  init?(rawValue: Int)
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
  init()
}
protocol UITableViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 3.0, *)
  optional func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 3.0, *)
  optional func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedViewInTableView(tableView: UITableView) -> NSIndexPath?
}
let UITableViewSelectionDidChangeNotification: String
@available(tvOS 2.0, *)
class UITableView : UIScrollView, NSCoding {
  init(frame: CGRect, style: UITableViewStyle)
  init?(coder aDecoder: NSCoder)
  var style: UITableViewStyle { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  weak var delegate: @sil_weak UITableViewDelegate?
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
  func numberOfRowsInSection(section: Int) -> Int
  func rectForSection(section: Int) -> CGRect
  func rectForHeaderInSection(section: Int) -> CGRect
  func rectForFooterInSection(section: Int) -> CGRect
  func rectForRowAtIndexPath(indexPath: NSIndexPath) -> CGRect
  func indexPathForRowAtPoint(point: CGPoint) -> NSIndexPath?
  func indexPathForCell(cell: UITableViewCell) -> NSIndexPath?
  func indexPathsForRowsInRect(rect: CGRect) -> [NSIndexPath]?
  func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [NSIndexPath]? { get }
  @available(tvOS 6.0, *)
  func headerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  @available(tvOS 6.0, *)
  func footerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  func scrollToRowAtIndexPath(indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool)
  func scrollToNearestSelectedRowAtScrollPosition(scrollPosition: UITableViewScrollPosition, animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveSection(section: Int, toSection newSection: Int)
  func insertRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveRowAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  var editing: Bool
  func setEditing(editing: Bool, animated: Bool)
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
  func selectRowAtIndexPath(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition)
  func deselectRowAtIndexPath(indexPath: NSIndexPath, animated: Bool)
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
  func dequeueReusableCellWithIdentifier(identifier: String) -> UITableViewCell?
  @available(tvOS 6.0, *)
  func dequeueReusableCellWithIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 6.0, *)
  func dequeueReusableHeaderFooterViewWithIdentifier(identifier: String) -> UITableViewHeaderFooterView?
  @available(tvOS 5.0, *)
  func registerNib(nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerClass(cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerNib(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerClass(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITableViewDataSource : NSObjectProtocol {
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  optional func numberOfSectionsInTableView(tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
extension NSIndexPath {
  convenience init(forRow row: Int, inSection section: Int)
  var section: Int { get }
  var row: Int { get }
}
