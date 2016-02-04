
@available(OSX 10.10, *)
enum NSTabViewControllerTabStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SegmentedControlOnTop
  case SegmentedControlOnBottom
  case Toolbar
  case Unspecified
}
@available(OSX 10.10, *)
class NSTabViewController : NSViewController, NSTabViewDelegate, NSToolbarDelegate {
  var tabStyle: NSTabViewControllerTabStyle
  var tabView: NSTabView
  var transitionOptions: NSViewControllerTransitionOptions
  var canPropagateSelectedChildViewControllerTitle: Bool
  var tabViewItems: [NSTabViewItem]
  var selectedTabViewItemIndex: Int
  func addTabViewItem(tabViewItem: NSTabViewItem)
  func insertTabViewItem(tabViewItem: NSTabViewItem, atIndex index: Int)
  func removeTabViewItem(tabViewItem: NSTabViewItem)
  func tabViewItemForViewController(viewController: NSViewController) -> NSTabViewItem?
  func viewDidLoad()
  func tabView(tabView: NSTabView, willSelectTabViewItem tabViewItem: NSTabViewItem?)
  func tabView(tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem?)
  func tabView(tabView: NSTabView, shouldSelectTabViewItem tabViewItem: NSTabViewItem?) -> Bool
  func toolbar(toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  func toolbarDefaultItemIdentifiers(toolbar: NSToolbar) -> [String]
  func toolbarAllowedItemIdentifiers(toolbar: NSToolbar) -> [String]
  func toolbarSelectableItemIdentifiers(toolbar: NSToolbar) -> [String]
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.10, *)
  func tabViewDidChangeNumberOfTabViewItems(tabView: NSTabView)
  @available(OSX 10.10, *)
  func toolbarWillAddItem(notification: NSNotification)
  @available(OSX 10.10, *)
  func toolbarDidRemoveItem(notification: NSNotification)
}
