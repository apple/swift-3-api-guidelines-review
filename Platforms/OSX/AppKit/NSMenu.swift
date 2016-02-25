
class NSMenu : NSObject, NSCopying, NSCoding {
  init(title aTitle: String)
  var title: String
  class func popUpContextMenu(_ menu: NSMenu, withEvent event: NSEvent, forView view: NSView)
  class func popUpContextMenu(_ menu: NSMenu, withEvent event: NSEvent, forView view: NSView, withFont font: NSFont?)
  @available(OSX 10.6, *)
  func popUpMenuPositioningItem(_ item: NSMenuItem?, atLocation location: NSPoint, inView view: NSView?) -> Bool
  class func setMenuBarVisible(_ visible: Bool)
  class func menuBarVisible() -> Bool
  unowned(unsafe) var supermenu: @sil_unmanaged NSMenu?
  func insertItem(_ newItem: NSMenuItem, atIndex index: Int)
  func addItem(_ newItem: NSMenuItem)
  func insertItemWithTitle(_ aString: String, action aSelector: Selector, keyEquivalent charCode: String, atIndex index: Int) -> NSMenuItem?
  func addItemWithTitle(_ aString: String, action aSelector: Selector, keyEquivalent charCode: String) -> NSMenuItem?
  func removeItemAtIndex(_ index: Int)
  func removeItem(_ item: NSMenuItem)
  func setSubmenu(_ aMenu: NSMenu?, forItem anItem: NSMenuItem)
  @available(OSX 10.6, *)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func itemAtIndex(_ index: Int) -> NSMenuItem?
  func indexOfItem(_ item: NSMenuItem) -> Int
  func indexOfItemWithTitle(_ aTitle: String) -> Int
  func indexOfItemWithTag(_ aTag: Int) -> Int
  func indexOfItemWithRepresentedObject(_ object: AnyObject) -> Int
  func indexOfItemWithSubmenu(_ submenu: NSMenu?) -> Int
  func indexOfItemWithTarget(_ target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemWithTitle(_ aTitle: String) -> NSMenuItem?
  func itemWithTag(_ tag: Int) -> NSMenuItem?
  var autoenablesItems: Bool
  func update()
  func performKeyEquivalent(_ theEvent: NSEvent) -> Bool
  func itemChanged(_ item: NSMenuItem)
  func performActionForItemAtIndex(_ index: Int)
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
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
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
  init(noAutoenable noAutoenable: UInt32, inMain inMain: UInt32, internalPerformAction internalPerformAction: UInt32, condenseSeparators condenseSeparators: UInt32, disabled disabled: UInt32, ownedByPopUp ownedByPopUp: UInt32, delegateNeedsUpdate delegateNeedsUpdate: UInt32, delegateUpdateItem delegateUpdateItem: UInt32, delegateHasKeyEquiv delegateHasKeyEquiv: UInt32, delegateHasAltKeyEquiv delegateHasAltKeyEquiv: UInt32, excludeMarkColumn excludeMarkColumn: UInt32, isContextualMenu isContextualMenu: UInt32, cmPluginMode cmPluginMode: UInt32, invertedCMPluginTypes invertedCMPluginTypes: UInt32, allowsDifferentSelection allowsDifferentSelection: UInt32, noTopPadding noTopPadding: UInt32, noBottomPadding noBottomPadding: UInt32, hasNCStyle hasNCStyle: UInt32, delegateIsUnsafeUnretained delegateIsUnsafeUnretained: UInt32, RESERVED RESERVED: UInt32)
}
extension NSMenu {
  func submenuAction(_ sender: AnyObject?)
}
extension NSObject {
  class func validateMenuItem(_ menuItem: NSMenuItem) -> Bool
  func validateMenuItem(_ menuItem: NSMenuItem) -> Bool
}
protocol NSMenuDelegate : NSObjectProtocol {
  optional func menuNeedsUpdate(_ menu: NSMenu)
  optional func numberOfItemsInMenu(_ menu: NSMenu) -> Int
  optional func menu(_ menu: NSMenu, updateItem item: NSMenuItem, atIndex index: Int, shouldCancel shouldCancel: Bool) -> Bool
  optional func menuHasKeyEquivalent(_ menu: NSMenu, forEvent event: NSEvent, target target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action action: UnsafeMutablePointer<Selector>) -> Bool
  @available(OSX 10.5, *)
  optional func menuWillOpen(_ menu: NSMenu)
  @available(OSX 10.5, *)
  optional func menuDidClose(_ menu: NSMenu)
  @available(OSX 10.5, *)
  optional func menu(_ menu: NSMenu, willHighlightItem item: NSMenuItem?)
  @available(OSX 10.6, *)
  optional func confinementRectForMenu(_ menu: NSMenu, onScreen screen: NSScreen?) -> NSRect
}
struct NSMenuProperties : OptionSetType {
  init(rawValue rawValue: UInt)
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
  func helpRequested(_ eventPtr: NSEvent)
  @available(OSX, introduced=10.0, deprecated=10.11)
  var tornOff: Bool { get }
}
