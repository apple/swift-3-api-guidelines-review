
@available(OSX 10.10, *)
enum NSTabViewControllerTabStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case segmentedControlOnTop
  case segmentedControlOnBottom
  case toolbar
  case unspecified
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
  func insertTabViewItem(tabViewItem: NSTabViewItem, at index: Int)
  func removeTabViewItem(tabViewItem: NSTabViewItem)
  func tabViewItemFor(viewController: NSViewController) -> NSTabViewItem?
  func viewDidLoad()
  func tabView(tabView: NSTabView, willSelect tabViewItem: NSTabViewItem?)
  func tabView(tabView: NSTabView, didSelect tabViewItem: NSTabViewItem?)
  func tabView(tabView: NSTabView, shouldSelect tabViewItem: NSTabViewItem?) -> Bool
  func toolbar(toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  func toolbarDefaultItemIdentifiers(toolbar: NSToolbar) -> [String]
  func toolbarAllowedItemIdentifiers(toolbar: NSToolbar) -> [String]
  func toolbarSelectableItemIdentifiers(toolbar: NSToolbar) -> [String]
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
  @available(OSX 10.10, *)
  func tabViewDidChangeNumberOf(tabViewItems tabView: NSTabView)
  @available(OSX 10.10, *)
  func toolbarWillAddItem(notification: Notification)
  @available(OSX 10.10, *)
  func toolbarDidRemoveItem(notification: Notification)
}
