
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
  func removeItemAt(index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOf(item: NSMenuItem) -> Int
  func indexOfItemWith(title title: String) -> Int
  func indexOfItemWith(tag tag: Int) -> Int
  func indexOfItemWith(representedObject obj: AnyObject?) -> Int
  func indexOfItemWith(target target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemAt(index: Int) -> NSMenuItem?
  func itemWith(title title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func select(item: NSMenuItem?)
  func selectItemAt(index: Int)
  func selectItem(title title: String)
  func selectItem(tag tag: Int) -> Bool
  func setTitle(aString: String)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAt(index: Int) -> String
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
