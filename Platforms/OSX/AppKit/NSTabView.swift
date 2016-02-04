
var NSAppKitVersionNumberWithDirectionalTabs: Double { get }
enum NSTabViewType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TopTabsBezelBorder
  case LeftTabsBezelBorder
  case BottomTabsBezelBorder
  case RightTabsBezelBorder
  case NoTabsBezelBorder
  case NoTabsLineBorder
  case NoTabsNoBorder
}
class NSTabView : NSView {
  func selectTabViewItem(tabViewItem: NSTabViewItem?)
  func selectTabViewItemAtIndex(index: Int)
  func selectTabViewItemWithIdentifier(identifier: AnyObject)
  func takeSelectedTabViewItemFromSender(sender: AnyObject?)
  func selectFirstTabViewItem(sender: AnyObject?)
  func selectLastTabViewItem(sender: AnyObject?)
  func selectNextTabViewItem(sender: AnyObject?)
  func selectPreviousTabViewItem(sender: AnyObject?)
  var selectedTabViewItem: NSTabViewItem? { get }
  var font: NSFont
  var tabViewType: NSTabViewType
  var tabViewItems: [NSTabViewItem] { get }
  var allowsTruncatedLabels: Bool
  var minimumSize: NSSize { get }
  var drawsBackground: Bool
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  func addTabViewItem(tabViewItem: NSTabViewItem)
  func insertTabViewItem(tabViewItem: NSTabViewItem, atIndex index: Int)
  func removeTabViewItem(tabViewItem: NSTabViewItem)
  unowned(unsafe) var delegate: @sil_unmanaged NSTabViewDelegate?
  func tabViewItemAtPoint(point: NSPoint) -> NSTabViewItem?
  var contentRect: NSRect { get }
  var numberOfTabViewItems: Int { get }
  func indexOfTabViewItem(tabViewItem: NSTabViewItem) -> Int
  func tabViewItemAtIndex(index: Int) -> NSTabViewItem
  func indexOfTabViewItemWithIdentifier(identifier: AnyObject) -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __NSTabViewDelegateRespondTo {
  var shouldSelectTabViewItem: UInt32
  var willSelectTabViewItem: UInt32
  var didSelectTabViewItem: UInt32
  var didChangeNumberOfTabViewItems: UInt32
  var reserved: UInt32
  init()
  init(shouldSelectTabViewItem: UInt32, willSelectTabViewItem: UInt32, didSelectTabViewItem: UInt32, didChangeNumberOfTabViewItems: UInt32, reserved: UInt32)
}
struct __NSTabViewFlags {
  var needsLayout: UInt32
  var controlTint: UInt32
  var controlSize: UInt32
  var wiringNibConnections: UInt32
  var wiringInteriorLastKeyView: UInt32
  var originalNextKeyViewChanged: UInt32
  var liveResizeSkippedResetToolTips: UInt32
  var subviewsAddedForTabs: UInt32
  var allowsPropertyChange: UInt32
  var ownedByTabViewController: UInt32
  var reserved: UInt32
  init()
  init(needsLayout: UInt32, controlTint: UInt32, controlSize: UInt32, wiringNibConnections: UInt32, wiringInteriorLastKeyView: UInt32, originalNextKeyViewChanged: UInt32, liveResizeSkippedResetToolTips: UInt32, subviewsAddedForTabs: UInt32, allowsPropertyChange: UInt32, ownedByTabViewController: UInt32, reserved: UInt32)
}
protocol NSTabViewDelegate : NSObjectProtocol {
  optional func tabView(tabView: NSTabView, shouldSelectTabViewItem tabViewItem: NSTabViewItem?) -> Bool
  optional func tabView(tabView: NSTabView, willSelectTabViewItem tabViewItem: NSTabViewItem?)
  optional func tabView(tabView: NSTabView, didSelectTabViewItem tabViewItem: NSTabViewItem?)
  optional func tabViewDidChangeNumberOfTabViewItems(tabView: NSTabView)
}
