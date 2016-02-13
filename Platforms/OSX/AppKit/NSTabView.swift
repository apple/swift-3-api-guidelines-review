
var NSAppKitVersionNumberWithDirectionalTabs: Double { get }
enum NSTabViewType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case topTabsBezelBorder
  case leftTabsBezelBorder
  case bottomTabsBezelBorder
  case rightTabsBezelBorder
  case noTabsBezelBorder
  case noTabsLineBorder
  case noTabsNoBorder
}
class NSTabView : NSView {
  func select(tabViewItem: NSTabViewItem?)
  func selectItem(at index: Int)
  func selectItem(withIdentifier identifier: AnyObject)
  func takeSelectedTabViewItemFromSender(sender: AnyObject?)
  func selectFirstTabViewItem(sender: AnyObject?)
  func selectLastItem(sender: AnyObject?)
  func selectNextTabViewItem(sender: AnyObject?)
  func selectPreviousTabViewItem(sender: AnyObject?)
  var selectedTabViewItem: NSTabViewItem? { get }
  var font: NSFont
  var tabViewType: NSTabViewType
  var tabViewItems: [NSTabViewItem] { get }
  var allowsTruncatedLabels: Bool
  var minimumSize: Size { get }
  var drawsBackground: Bool
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  func add(tabViewItem: NSTabViewItem)
  func insert(tabViewItem: NSTabViewItem, at index: Int)
  func remove(tabViewItem: NSTabViewItem)
  unowned(unsafe) var delegate: @sil_unmanaged NSTabViewDelegate?
  func tabViewItem(at point: Point) -> NSTabViewItem?
  var contentRect: Rect { get }
  var numberOfTabViewItems: Int { get }
  func indexOf(tabViewItem: NSTabViewItem) -> Int
  func tabViewItem(at index: Int) -> NSTabViewItem
  func indexOfTabViewItem(withIdentifier identifier: AnyObject) -> Int
  init(frame frameRect: Rect)
  init?(coder: Coder)
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
protocol NSTabViewDelegate : ObjectProtocol {
  optional func tabView(tabView: NSTabView, shouldSelect tabViewItem: NSTabViewItem?) -> Bool
  optional func tabView(tabView: NSTabView, willSelect tabViewItem: NSTabViewItem?)
  optional func tabView(tabView: NSTabView, didSelect tabViewItem: NSTabViewItem?)
  optional func tabViewDidChangeNumberOf(tabViewItems tabView: NSTabView)
}
