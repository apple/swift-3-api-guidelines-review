
enum UITableViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case grouped
}
enum UITableViewScrollPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case top
  case middle
  case bottom
}
enum UITableViewRowAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fade
  case right
  case left
  case top
  case bottom
  case none
  case middle
  case automatic
}
@available(tvOS 5.0, *)
let UITableViewAutomaticDimension: CGFloat
@available(tvOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
  init()
}
protocol UITableViewDelegate : ObjectProtocol, UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  @available(tvOS 3.0, *)
  optional func tableView(tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  @available(tvOS 3.0, *)
  optional func tableView(tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath?
}
let UITableViewSelectionDidChangeNotification: String
@available(tvOS 2.0, *)
class UITableView : UIScrollView, Coding {
  init(frame: CGRect, style: UITableViewStyle)
  init?(coder aDecoder: Coder)
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
  func numberOfRows(inSection section: Int) -> Int
  func rect(forSection section: Int) -> CGRect
  func rectForHeader(inSection section: Int) -> CGRect
  func rectForFooter(inSection section: Int) -> CGRect
  func rectForRow(at indexPath: IndexPath) -> CGRect
  func indexPathForRow(at point: CGPoint) -> IndexPath?
  func indexPath(forCell cell: UITableViewCell) -> IndexPath?
  func indexPathsForRows(in rect: CGRect) -> [IndexPath]?
  func cellForRow(at indexPath: IndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [IndexPath]? { get }
  @available(tvOS 6.0, *)
  func headerView(forSection section: Int) -> UITableViewHeaderFooterView?
  @available(tvOS 6.0, *)
  func footerView(forSection section: Int) -> UITableViewHeaderFooterView?
  func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableViewScrollPosition, animated: Bool)
  func scrollToNearestSelectedRowAt(scrollPosition: UITableViewScrollPosition, animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadSections(sections: IndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveSection(section: Int, toSection newSection: Int)
  func insertRows(at indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRows(at indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadRows(at indexPaths: [IndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath)
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  @available(tvOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: IndexPath? { get }
  @available(tvOS 5.0, *)
  var indexPathsForSelectedRows: [IndexPath]? { get }
  func selectRow(at indexPath: IndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition)
  func deselectRow(at indexPath: IndexPath, animated: Bool)
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
  func dequeueReusableCell(withIdentifier identifier: String) -> UITableViewCell?
  @available(tvOS 6.0, *)
  func dequeueReusableCell(withIdentifier identifier: String, forIndexPath indexPath: IndexPath) -> UITableViewCell
  @available(tvOS 6.0, *)
  func dequeueReusableHeaderFooterView(withIdentifier identifier: String) -> UITableViewHeaderFooterView?
  @available(tvOS 5.0, *)
  func register(nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITableViewDataSource : ObjectProtocol {
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  optional func numberOfSections(in tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
extension IndexPath {
  convenience init(forRow row: Int, inSection section: Int)
  var section: Int { get }
  var row: Int { get }
}
