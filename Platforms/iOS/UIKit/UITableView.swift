
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
@available(iOS 3.0, *)
let UITableViewIndexSearch: String
@available(iOS 5.0, *)
let UITableViewAutomaticDimension: CGFloat
@available(iOS 8.0, *)
enum UITableViewRowActionStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  static var Destructive: UITableViewRowActionStyle { get }
  case Normal
}
@available(iOS 8.0, *)
class UITableViewRowAction : NSObject, NSCopying {
  convenience init(style style: UITableViewRowActionStyle, title title: String?, handler handler: (UITableViewRowAction, NSIndexPath) -> Void)
  var style: UITableViewRowActionStyle { get }
  var title: String?
  @NSCopying var backgroundColor: UIColor?
  @NSCopying var backgroundEffect: UIVisualEffect?
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
}
protocol UITableViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 3.0, *)
  optional func tableView(_ tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 3.0, *)
  optional func tableView(_ tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(iOS 3.0, *)
  optional func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String?
  @available(iOS 8.0, *)
  optional func tableView(_ tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(iOS 5.0, *)
  optional func tableView(_ tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 5.0, *)
  optional func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  optional func tableView(_ tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 9.0, *)
  optional func tableView(_ tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func tableView(_ tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  optional func tableView(_ tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  optional func indexPathForPreferredFocusedViewInTableView(_ tableView: UITableView) -> NSIndexPath?
}
let UITableViewSelectionDidChangeNotification: String
@available(iOS 2.0, *)
class UITableView : UIScrollView, NSCoding {
  init(frame frame: CGRect, style style: UITableViewStyle)
  var style: UITableViewStyle { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedRowHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedSectionHeaderHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedSectionFooterHeight: CGFloat
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  @available(iOS 3.2, *)
  var backgroundView: UIView?
  func reloadData()
  @available(iOS 3.0, *)
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
  @available(iOS 6.0, *)
  func headerViewForSection(_ section: Int) -> UITableViewHeaderFooterView?
  @available(iOS 6.0, *)
  func footerViewForSection(_ section: Int) -> UITableViewHeaderFooterView?
  func scrollToRowAtIndexPath(_ indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated animated: Bool)
  func scrollToNearestSelectedRowAtScrollPosition(_ scrollPosition: UITableViewScrollPosition, animated animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(_ sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(_ sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(iOS 3.0, *)
  func reloadSections(_ sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(iOS 5.0, *)
  func moveSection(_ section: Int, toSection newSection: Int)
  func insertRowsAtIndexPaths(_ indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRowsAtIndexPaths(_ indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(iOS 3.0, *)
  func reloadRowsAtIndexPaths(_ indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(iOS 5.0, *)
  func moveRowAtIndexPath(_ indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  var editing: Bool
  func setEditing(_ editing: Bool, animated animated: Bool)
  @available(iOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(iOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(iOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: NSIndexPath? { get }
  @available(iOS 5.0, *)
  var indexPathsForSelectedRows: [NSIndexPath]? { get }
  func selectRowAtIndexPath(_ indexPath: NSIndexPath?, animated animated: Bool, scrollPosition scrollPosition: UITableViewScrollPosition)
  func deselectRowAtIndexPath(_ indexPath: NSIndexPath, animated animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  @available(iOS 6.0, *)
  var sectionIndexColor: UIColor?
  @available(iOS 7.0, *)
  var sectionIndexBackgroundColor: UIColor?
  @available(iOS 6.0, *)
  var sectionIndexTrackingBackgroundColor: UIColor?
  var separatorStyle: UITableViewCellSeparatorStyle
  var separatorColor: UIColor?
  @available(iOS 8.0, *)
  @NSCopying var separatorEffect: UIVisualEffect?
  @available(iOS 9.0, *)
  var cellLayoutMarginsFollowReadableWidth: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCellWithIdentifier(_ identifier: String) -> UITableViewCell?
  @available(iOS 6.0, *)
  func dequeueReusableCellWithIdentifier(_ identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 6.0, *)
  func dequeueReusableHeaderFooterViewWithIdentifier(_ identifier: String) -> UITableViewHeaderFooterView?
  @available(iOS 5.0, *)
  func registerNib(_ nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func registerClass(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func registerNib(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func registerClass(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
}
protocol UITableViewDataSource : NSObjectProtocol {
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  optional func numberOfSectionsInTableView(_ tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func sectionIndexTitlesForTableView(_ tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
extension NSIndexPath {
  convenience init(forRow row: Int, inSection section: Int)
  var section: Int { get }
  var row: Int { get }
}
