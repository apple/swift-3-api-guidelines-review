
@available(OSX 10.10, *)
enum NSTabViewControllerTabStyle : Int {
  init?(rawValue rawValue: Int)
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
  func addTabViewItem(_ tabViewItem: NSTabViewItem)
  func insertTabViewItem(_ tabViewItem: NSTabViewItem, at index: Int)
  func removeTabViewItem(_ tabViewItem: NSTabViewItem)
  func tabViewItem(for viewController: NSViewController) -> NSTabViewItem?
  func tabView(_ tabView: NSTabView, willSelect tabViewItem: NSTabViewItem?)
  func tabView(_ tabView: NSTabView, didSelect tabViewItem: NSTabViewItem?)
  func tabView(_ tabView: NSTabView, shouldSelect tabViewItem: NSTabViewItem?) -> Bool
  func toolbar(_ toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  func toolbarDefaultItemIdentifiers(_ toolbar: NSToolbar) -> [String]
  func toolbarAllowedItemIdentifiers(_ toolbar: NSToolbar) -> [String]
  func toolbarSelectableItemIdentifiers(_ toolbar: NSToolbar) -> [String]
  @available(OSX 10.10, *)
  func tabViewDidChangeNumber(ofTabViewItems tabView: NSTabView)
  @available(OSX 10.10, *)
  func toolbarWillAddItem(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func toolbarDidRemoveItem(_ notification: NSNotification)
}
