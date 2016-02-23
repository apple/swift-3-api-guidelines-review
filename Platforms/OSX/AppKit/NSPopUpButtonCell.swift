
enum NSPopUpArrowPosition : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case noArrow
  case arrowAtCenter
  case arrowAtBottom
}
class NSPopUpButtonCell : NSMenuItemCell {
  init(textCell stringValue: String, pullsDown pullDown: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  var usesItemFromMenu: Bool
  var altersStateOfSelectedItem: Bool
  func addItem(title title: String)
  func addItems(titles itemTitles: [String])
  func insertItem(title title: String, at index: Int)
  func removeItem(title title: String)
  func removeItem(at index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func index(of item: NSMenuItem) -> Int
  func indexOfItem(withTitle title: String) -> Int
  func indexOfItem(withTag tag: Int) -> Int
  func indexOfItem(withRepresentedObject obj: AnyObject?) -> Int
  func indexOfItem(withTarget target: AnyObject?, andAction actionSelector: Selector) -> Int
  func item(at index: Int) -> NSMenuItem?
  func item(withTitle title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func select(_ item: NSMenuItem?)
  func selectItem(at index: Int)
  func selectItem(title title: String)
  func selectItem(tag tag: Int) -> Bool
  func setTitle(_ aString: String?)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitle(at index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func attachPopUp(frame cellFrame: NSRect, in controlView: NSView)
  func dismissPopUp()
  func performClick(frame frame: NSRect, in controlView: NSView)
  var arrowPosition: NSPopUpArrowPosition
  convenience init(textCell aString: String)
  convenience init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
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
