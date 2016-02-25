
class NSPopUpButton : NSButton {
  init(frame buttonFrame: NSRect, pullsDown flag: Bool)
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
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
  func setTitle(_ aString: String)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAtIndex(_ index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
}
struct __pbFlags {
  var needsPullsDownFromTemplate: UInt32
  var RESERVED: UInt32
  init()
  init(needsPullsDownFromTemplate needsPullsDownFromTemplate: UInt32, RESERVED RESERVED: UInt32)
}
let NSPopUpButtonWillPopUpNotification: String
