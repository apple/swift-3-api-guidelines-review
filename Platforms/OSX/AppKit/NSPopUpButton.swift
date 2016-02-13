
class NSPopUpButton : NSButton {
  init(frame buttonFrame: Rect, pullsDown flag: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: RectEdge
  func addItem(title title: String)
  func addItems(titles itemTitles: [String])
  func insertItem(title title: String, at index: Int)
  func removeItem(title title: String)
  func removeItem(at index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOf(item: NSMenuItem) -> Int
  func indexOfItem(title title: String) -> Int
  func indexOfItem(tag tag: Int) -> Int
  func indexOfItem(representedObject obj: AnyObject?) -> Int
  func indexOfItem(target target: AnyObject?, andAction actionSelector: Selector) -> Int
  func item(at index: Int) -> NSMenuItem?
  func item(title title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func select(item: NSMenuItem?)
  func selectItem(at index: Int)
  func selectItem(title title: String)
  func selectItem(tag tag: Int) -> Bool
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
