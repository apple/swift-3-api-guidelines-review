
class NSMenu : NSObject, NSCopying, NSCoding {
  init(title aTitle: String)
  var title: String
  class func popUpContextMenu(menu: NSMenu, withEvent event: NSEvent, forView view: NSView)
  class func popUpContextMenu(menu: NSMenu, withEvent event: NSEvent, forView view: NSView, withFont font: NSFont?)
  @available(OSX 10.6, *)
  func popUpMenuPositioningItem(item: NSMenuItem?, atLocation location: NSPoint, inView view: NSView?) -> Bool
  class func setMenuBarVisible(visible: Bool)
  class func menuBarVisible() -> Bool
  unowned(unsafe) var supermenu: @sil_unmanaged NSMenu?
  func insertItem(newItem: NSMenuItem, atIndex index: Int)
  func addItem(newItem: NSMenuItem)
  func insertItemWithTitle(aString: String, action aSelector: Selector, keyEquivalent charCode: String, atIndex index: Int) -> NSMenuItem?
  func addItemWithTitle(aString: String, action aSelector: Selector, keyEquivalent charCode: String) -> NSMenuItem?
  func removeItemAtIndex(index: Int)
  func removeItem(item: NSMenuItem)
  func setSubmenu(aMenu: NSMenu?, forItem anItem: NSMenuItem)
  @available(OSX 10.6, *)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func itemAtIndex(index: Int) -> NSMenuItem?
  func indexOfItem(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(aTitle: String) -> Int
  func indexOfItemWithTag(aTag: Int) -> Int
  func indexOfItemWithRepresentedObject(object: AnyObject) -> Int
  func indexOfItemWithSubmenu(submenu: NSMenu?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemWithTitle(aTitle: String) -> NSMenuItem?
  func itemWithTag(tag: Int) -> NSMenuItem?
  var autoenablesItems: Bool
  func update()
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func itemChanged(item: NSMenuItem)
  func performActionForItemAtIndex(index: Int)
  unowned(unsafe) var delegate: @sil_unmanaged NSMenuDelegate?
  var menuBarHeight: CGFloat { get }
  @available(OSX 10.5, *)
  func cancelTracking()
  @available(OSX 10.6, *)
  func cancelTrackingWithoutAnimation()
  @available(OSX 10.5, *)
  var highlightedItem: NSMenuItem? { get }
  @available(OSX 10.6, *)
  var minimumWidth: CGFloat
  @available(OSX 10.6, *)
  var size: NSSize { get }
  @available(OSX 10.6, *)
  var font: NSFont!
  @available(OSX 10.6, *)
  var allowsContextMenuPlugIns: Bool
  @available(OSX 10.5, *)
  var showsStateColumn: Bool
  @available(OSX 10.11, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __mFlags {
  var noAutoenable: UInt32
  var inMain: UInt32
  var internalPerformAction: UInt32
  var condenseSeparators: UInt32
  var disabled: UInt32
  var ownedByPopUp: UInt32
  var delegateNeedsUpdate: UInt32
  var delegateUpdateItem: UInt32
  var delegateHasKeyEquiv: UInt32
  var delegateHasAltKeyEquiv: UInt32
  var excludeMarkColumn: UInt32
  var isContextualMenu: UInt32
  var cmPluginMode: UInt32
  var invertedCMPluginTypes: UInt32
  var allowsDifferentSelection: UInt32
  var noTopPadding: UInt32
  var noBottomPadding: UInt32
  var hasNCStyle: UInt32
  var delegateIsUnsafeUnretained: UInt32
  var RESERVED: UInt32
  init()
  init(noAutoenable: UInt32, inMain: UInt32, internalPerformAction: UInt32, condenseSeparators: UInt32, disabled: UInt32, ownedByPopUp: UInt32, delegateNeedsUpdate: UInt32, delegateUpdateItem: UInt32, delegateHasKeyEquiv: UInt32, delegateHasAltKeyEquiv: UInt32, excludeMarkColumn: UInt32, isContextualMenu: UInt32, cmPluginMode: UInt32, invertedCMPluginTypes: UInt32, allowsDifferentSelection: UInt32, noTopPadding: UInt32, noBottomPadding: UInt32, hasNCStyle: UInt32, delegateIsUnsafeUnretained: UInt32, RESERVED: UInt32)
}
extension NSMenu {
  func submenuAction(sender: AnyObject?)
}
extension NSObject {
  class func validateMenuItem(menuItem: NSMenuItem) -> Bool
  func validateMenuItem(menuItem: NSMenuItem) -> Bool
}
protocol NSMenuDelegate : NSObjectProtocol {
  optional func menuNeedsUpdate(menu: NSMenu)
  optional func numberOfItemsInMenu(menu: NSMenu) -> Int
  optional func menu(menu: NSMenu, updateItem item: NSMenuItem, atIndex index: Int, shouldCancel: Bool) -> Bool
  optional func menuHasKeyEquivalent(menu: NSMenu, forEvent event: NSEvent, target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action: UnsafeMutablePointer<Selector>) -> Bool
  @available(OSX 10.5, *)
  optional func menuWillOpen(menu: NSMenu)
  @available(OSX 10.5, *)
  optional func menuDidClose(menu: NSMenu)
  @available(OSX 10.5, *)
  optional func menu(menu: NSMenu, willHighlightItem item: NSMenuItem?)
  @available(OSX 10.6, *)
  optional func confinementRectForMenu(menu: NSMenu, onScreen screen: NSScreen?) -> NSRect
}
struct NSMenuProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PropertyItemTitle: NSMenuProperties { get }
  static var PropertyItemAttributedTitle: NSMenuProperties { get }
  static var PropertyItemKeyEquivalent: NSMenuProperties { get }
  static var PropertyItemImage: NSMenuProperties { get }
  static var PropertyItemEnabled: NSMenuProperties { get }
  static var PropertyItemAccessibilityDescription: NSMenuProperties { get }
}
extension NSMenu {
  @available(OSX 10.6, *)
  var propertiesToUpdate: NSMenuProperties { get }
}
let NSMenuWillSendActionNotification: String
let NSMenuDidSendActionNotification: String
let NSMenuDidAddItemNotification: String
let NSMenuDidRemoveItemNotification: String
let NSMenuDidChangeItemNotification: String
let NSMenuDidBeginTrackingNotification: String
let NSMenuDidEndTrackingNotification: String
extension NSMenu {
  @available(OSX, introduced=10.0, deprecated=10.11)
  class func menuZone() -> NSZone
  @available(OSX, introduced=10.0, deprecated=10.11)
  var menuChangedMessagesEnabled: Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func helpRequested(eventPtr: NSEvent)
  @available(OSX, introduced=10.0, deprecated=10.11)
  var tornOff: Bool { get }
}
