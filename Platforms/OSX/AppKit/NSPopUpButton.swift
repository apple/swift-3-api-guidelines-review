
class NSPopUpButton : NSButton {
  init(frame buttonFrame: NSRect, pullsDown flag: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  func addItemWithTitle(title: String)
  func addItemsWithTitles(itemTitles: [String])
  func insertItemWithTitle(title: String, atIndex index: Int)
  func removeItemWithTitle(title: String)
  func removeItemAtIndex(index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOfItem(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(title: String) -> Int
  func indexOfItemWithTag(tag: Int) -> Int
  func indexOfItemWithRepresentedObject(obj: AnyObject?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemAtIndex(index: Int) -> NSMenuItem?
  func itemWithTitle(title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func selectItem(item: NSMenuItem?)
  func selectItemAtIndex(index: Int)
  func selectItemWithTitle(title: String)
  func selectItemWithTag(tag: Int) -> Bool
  func setTitle(aString: String)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAtIndex(index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func selectedTag() -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __pbFlags {
  var needsPullsDownFromTemplate: UInt32
  var RESERVED: UInt32
  init()
  init(needsPullsDownFromTemplate: UInt32, RESERVED: UInt32)
}
let NSPopUpButtonWillPopUpNotification: String
