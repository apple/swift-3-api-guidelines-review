
@available(OSX 10.10, *)
enum NSTabViewControllerTabStyle : Int {
  init?(rawValue rawValue: Int)
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
  func addTabViewItem(_ tabViewItem: NSTabViewItem)
  func insertTabViewItem(_ tabViewItem: NSTabViewItem, atIndex index: Int)
  func removeTabViewItem(_ tabViewItem: NSTabViewItem)
  func tabViewItemForViewController(_ viewController: NSViewController) -> NSTabViewItem?
  func tabView(_ tabView: NSTabView, willSelectTabViewItem tabViewItem: NSTabViewItem?)
  func tabView(_ tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem?)
  func tabView(_ tabView: NSTabView, shouldSelectTabViewItem tabViewItem: NSTabViewItem?) -> Bool
  func toolbar(_ toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  func toolbarDefaultItemIdentifiers(_ toolbar: NSToolbar) -> [String]
  func toolbarAllowedItemIdentifiers(_ toolbar: NSToolbar) -> [String]
  func toolbarSelectableItemIdentifiers(_ toolbar: NSToolbar) -> [String]
  @available(OSX 10.10, *)
  func tabViewDidChangeNumberOfTabViewItems(_ tabView: NSTabView)
  @available(OSX 10.10, *)
  func toolbarWillAddItem(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func toolbarDidRemoveItem(_ notification: NSNotification)
}
