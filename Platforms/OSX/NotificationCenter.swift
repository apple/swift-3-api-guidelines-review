
@available(OSX 10.10, *)
class NCWidgetController : NSObject {
  class func widgetController() -> Self!
  @available(*, deprecated, message="Use widgetController instead.")
  class func defaultWidgetController() -> NCWidgetController!
  func setHasContent(flag: Bool, forWidgetWithBundleIdentifier bundleID: String!)
  init()
}
@available(OSX 10.10, *)
class NCWidgetListViewController : NSViewController {
  @IBOutlet weak var delegate: @sil_weak NCWidgetListViewDelegate!
  var contents: [AnyObject]!
  var minimumVisibleRowCount: Int
  var hasDividerLines: Bool
  var editing: Bool
  var showsAddButtonWhenEditing: Bool
  func viewControllerAtRow(row: Int, makeIfNecessary makeIfNecesary: Bool) -> NSViewController!
  func rowFor(viewController: NSViewController!) -> Int
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol NCWidgetListViewDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  func widgetList(list: NCWidgetListViewController!, viewControllerForRow row: Int) -> NSViewController!
  @available(OSX 10.10, *)
  optional func widgetListPerformAddAction(list: NCWidgetListViewController!)
  @available(OSX 10.10, *)
  optional func widgetList(list: NCWidgetListViewController!, shouldReorderRow row: Int) -> Bool
  @available(OSX 10.10, *)
  optional func widgetList(list: NCWidgetListViewController!, didReorderRow row: Int, toRow newIndex: Int)
  @available(OSX 10.10, *)
  optional func widgetList(list: NCWidgetListViewController!, shouldRemoveRow row: Int) -> Bool
  @available(OSX 10.10, *)
  optional func widgetList(list: NCWidgetListViewController!, didRemoveRow row: Int)
}
@available(OSX 10.10, *)
enum NCUpdateResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
protocol NCWidgetProviding : NSExtensionRequestHandling {
  @available(OSX 10.10, *)
  optional func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!)
  optional func widgetMarginInsetsForProposedMarginInsets(defaultMarginInset: NSEdgeInsets) -> NSEdgeInsets
  optional var widgetAllowsEditing: Bool { get }
  optional func widgetDidBeginEditing()
  optional func widgetDidEndEditing()
}
extension NSViewController {
  @available(OSX 10.10, *)
  func presentInWidget(viewController: NSViewController!)
}
@available(OSX 10.10, *)
class NCWidgetSearchViewController : NSViewController {
  @IBOutlet weak var delegate: @sil_weak NCWidgetSearchViewDelegate!
  var searchResults: [AnyObject]!
  var searchDescription: String!
  var searchResultsPlaceholderString: String!
  var searchResultKeyPath: String!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol NCWidgetSearchViewDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  func widgetSearch(controller: NCWidgetSearchViewController!, searchForTerm searchTerm: String!, maxResults max: Int)
  @available(OSX 10.10, *)
  func widgetSearchTermCleared(controller: NCWidgetSearchViewController!)
  @available(OSX 10.10, *)
  func widgetSearch(controller: NCWidgetSearchViewController!, resultSelected object: AnyObject!)
}
