
enum NSPopUpArrowPosition : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NoArrow
  case ArrowAtCenter
  case ArrowAtBottom
}
class NSPopUpButtonCell : NSMenuItemCell {
  init(textCell stringValue: String, pullsDown pullDown: Bool)
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  var usesItemFromMenu: Bool
  var altersStateOfSelectedItem: Bool
  func addItemWithTitle(_ title: String)
  func addItemsWithTitles(_ itemTitles: [String])
  func insertItemWithTitle(_ title: String, atIndex index: Int)
  func removeItemWithTitle(_ title: String)
  func removeItemAtIndex(_ index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOfItem(_ item: NSMenuItem) -> Int
  func indexOfItemWithTitle(_ title: String) -> Int
  func indexOfItemWithTag(_ tag: Int) -> Int
  func indexOfItemWithRepresentedObject(_ obj: AnyObject?) -> Int
  func indexOfItemWithTarget(_ target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemAtIndex(_ index: Int) -> NSMenuItem?
  func itemWithTitle(_ title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func selectItem(_ item: NSMenuItem?)
  func selectItemAtIndex(_ index: Int)
  func selectItemWithTitle(_ title: String)
  func selectItemWithTag(_ tag: Int) -> Bool
  func setTitle(_ aString: String?)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAtIndex(_ index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func attachPopUpWithFrame(_ cellFrame: NSRect, inView controlView: NSView)
  func dismissPopUp()
  func performClickWithFrame(_ frame: NSRect, inView controlView: NSView)
  var arrowPosition: NSPopUpArrowPosition
}
struct __pbcFlags {
  var pullsDown: UInt32
  var preferredEdge: UInt32
  var menuIsAttached: UInt32
  var usesItemFromMenu: UInt32
  var altersStateOfSelectedItem: UInt32
  var decoding: UInt32
  var arrowPosition: UInt32
  var ignoreMenuLayout: UInt32
  var drawing: UInt32
  var menuShouldBeUniquedAgainstMain: UInt32
  var RESERVED: UInt32
  init()
  init(pullsDown pullsDown: UInt32, preferredEdge preferredEdge: UInt32, menuIsAttached menuIsAttached: UInt32, usesItemFromMenu usesItemFromMenu: UInt32, altersStateOfSelectedItem altersStateOfSelectedItem: UInt32, decoding decoding: UInt32, arrowPosition arrowPosition: UInt32, ignoreMenuLayout ignoreMenuLayout: UInt32, drawing drawing: UInt32, menuShouldBeUniquedAgainstMain menuShouldBeUniquedAgainstMain: UInt32, RESERVED RESERVED: UInt32)
}
let NSPopUpButtonCellWillPopUpNotification: String
