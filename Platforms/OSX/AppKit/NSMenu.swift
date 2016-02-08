
class NSMenu : Object, Copying, Coding {
  init(title aTitle: String)
  var title: String
  class func popUpContextMenu(menu: NSMenu, withEvent event: NSEvent, forView view: NSView)
  class func popUpContextMenu(menu: NSMenu, withEvent event: NSEvent, forView view: NSView, withFont font: NSFont?)
  @available(OSX 10.6, *)
  func popUpPositioningItem(item: NSMenuItem?, atLocation location: Point, in view: NSView?) -> Bool
  class func setMenuBarVisible(visible: Bool)
  class func menuBarVisible() -> Bool
  unowned(unsafe) var supermenu: @sil_unmanaged NSMenu?
  func insert(newItem: NSMenuItem, at index: Int)
  func add(newItem: NSMenuItem)
  func insertItem(title aString: String, action aSelector: Selector, keyEquivalent charCode: String, at index: Int) -> NSMenuItem?
  func addItem(title aString: String, action aSelector: Selector, keyEquivalent charCode: String) -> NSMenuItem?
  func removeItemAt(index: Int)
  func remove(item: NSMenuItem)
  func setSubmenu(aMenu: NSMenu?, forItem anItem: NSMenuItem)
  @available(OSX 10.6, *)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func itemAt(index: Int) -> NSMenuItem?
  func indexOf(item: NSMenuItem) -> Int
  func indexOfItemWith(title aTitle: String) -> Int
  func indexOfItemWith(tag aTag: Int) -> Int
  func indexOfItemWith(representedObject object: AnyObject) -> Int
  func indexOfItemWith(submenu submenu: NSMenu?) -> Int
  func indexOfItemWith(target target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemWith(title aTitle: String) -> NSMenuItem?
  func itemWith(tag tag: Int) -> NSMenuItem?
  var autoenablesItems: Bool
  func update()
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func itemChanged(item: NSMenuItem)
  func performActionForItemAt(index: Int)
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
  var size: Size { get }
  @available(OSX 10.6, *)
  var font: NSFont!
  @available(OSX 10.6, *)
  var allowsContextMenuPlugIns: Bool
  @available(OSX 10.5, *)
  var showsStateColumn: Bool
  @available(OSX 10.11, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  convenience init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
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
extension Object {
  class func validate(menuItem: NSMenuItem) -> Bool
  func validate(menuItem: NSMenuItem) -> Bool
}
protocol NSMenuDelegate : ObjectProtocol {
  optional func menuNeedsUpdate(menu: NSMenu)
  optional func numberOfItemsIn(menu: NSMenu) -> Int
  optional func menu(menu: NSMenu, updateItem item: NSMenuItem, at index: Int, shouldCancel: Bool) -> Bool
  optional func menuHasKeyEquivalent(menu: NSMenu, forEvent event: NSEvent, target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action: UnsafeMutablePointer<Selector>) -> Bool
  @available(OSX 10.5, *)
  optional func menuWillOpen(menu: NSMenu)
  @available(OSX 10.5, *)
  optional func menuDidClose(menu: NSMenu)
  @available(OSX 10.5, *)
  optional func menu(menu: NSMenu, willHighlight item: NSMenuItem?)
  @available(OSX 10.6, *)
  optional func confinementRectFor(menu: NSMenu, on screen: NSScreen?) -> Rect
}
struct NSMenuProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var propertyItemTitle: NSMenuProperties { get }
  static var propertyItemAttributedTitle: NSMenuProperties { get }
  static var propertyItemKeyEquivalent: NSMenuProperties { get }
  static var propertyItemImage: NSMenuProperties { get }
  static var propertyItemEnabled: NSMenuProperties { get }
  static var propertyItemAccessibilityDescription: NSMenuProperties { get }
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
  class func menuZone() -> Zone
  @available(OSX, introduced=10.0, deprecated=10.11)
  var menuChangedMessagesEnabled: Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func helpRequested(eventPtr: NSEvent)
  @available(OSX, introduced=10.0, deprecated=10.11)
  var isTornOff: Bool { get }
}
