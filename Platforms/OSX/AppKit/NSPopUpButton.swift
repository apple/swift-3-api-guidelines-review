
class NSPopUpButton : NSButton {
  init(frame buttonFrame: Rect, pullsDown flag: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: RectEdge
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
  func select(item: NSMenuItem?)
  func selectItem(at index: Int)
  func selectItem(withTitle title: String)
  func selectItem(withTag tag: Int) -> Bool
  func setTitle(aString: String)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitle(at index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func selectedTag() -> Int
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
struct __pbFlags {
  var needsPullsDownFromTemplate: UInt32
  var RESERVED: UInt32
  init()
  init(needsPullsDownFromTemplate: UInt32, RESERVED: UInt32)
}
let NSPopUpButtonWillPopUpNotification: String
