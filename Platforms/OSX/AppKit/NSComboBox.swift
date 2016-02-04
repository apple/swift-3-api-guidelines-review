
let NSComboBoxWillPopUpNotification: String
let NSComboBoxWillDismissNotification: String
let NSComboBoxSelectionDidChangeNotification: String
let NSComboBoxSelectionIsChangingNotification: String
class NSComboBox : NSTextField {
  var hasVerticalScroller: Bool
  var intercellSpacing: NSSize
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var buttonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndexToTop(index: Int)
  func scrollItemAtIndexToVisible(index: Int)
  func selectItemAtIndex(index: Int)
  func deselectItemAtIndex(index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func delegate() -> NSComboBoxDelegate?
  func setDelegate(anObject: NSComboBoxDelegate?)
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxDataSource?
  func addItemWithObjectValue(object: AnyObject)
  func addItemsWithObjectValues(objects: [AnyObject])
  func insertItemWithObjectValue(object: AnyObject, atIndex index: Int)
  func removeItemWithObjectValue(object: AnyObject)
  func removeItemAtIndex(index: Int)
  func removeAllItems()
  func selectItemWithObjectValue(object: AnyObject?)
  func itemObjectValueAtIndex(index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItemWithObjectValue(object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSComboBoxDataSource : NSObjectProtocol {
  optional func numberOfItemsInComboBox(aComboBox: NSComboBox) -> Int
  optional func comboBox(aComboBox: NSComboBox, objectValueForItemAtIndex index: Int) -> AnyObject
  optional func comboBox(aComboBox: NSComboBox, indexOfItemWithStringValue string: String) -> Int
  optional func comboBox(aComboBox: NSComboBox, completedString string: String) -> String?
}
protocol NSComboBoxDelegate : NSTextFieldDelegate {
  optional func comboBoxWillPopUp(notification: NSNotification)
  optional func comboBoxWillDismiss(notification: NSNotification)
  optional func comboBoxSelectionDidChange(notification: NSNotification)
  optional func comboBoxSelectionIsChanging(notification: NSNotification)
}
