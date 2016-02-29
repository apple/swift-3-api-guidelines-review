
enum NSPopUpArrowPosition : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case noArrow
  case arrowAtCenter
  case arrowAtBottom
}
class NSPopUpButtonCell : NSMenuItemCell {
  init(textCell stringValue: String, pullsDown pullDown: Bool)
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  var usesItemFromMenu: Bool
  var altersStateOfSelectedItem: Bool
  func addItem(withTitle title: String)
  func addItems(withTitles itemTitles: [String])
  func insertItem(withTitle title: String, at index: Int)
  func removeItem(withTitle title: String)
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
  func selectItem(withTitle title: String)
  func selectItem(withTag tag: Int) -> Bool
  func setTitle(_ aString: String?)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitle(at index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func attachPopUp(withFrame cellFrame: NSRect, in controlView: NSView)
  func dismissPopUp()
  func performClick(withFrame frame: NSRect, in controlView: NSView)
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
