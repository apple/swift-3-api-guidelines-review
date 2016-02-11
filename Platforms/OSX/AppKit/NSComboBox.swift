
let NSComboBoxWillPopUpNotification: String
let NSComboBoxWillDismissNotification: String
let NSComboBoxSelectionDidChangeNotification: String
let NSComboBoxSelectionIsChangingNotification: String
class NSComboBox : NSTextField {
  var hasVerticalScroller: Bool
  var intercellSpacing: Size
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var isButtonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndex(toTop index: Int)
  func scrollItemAtIndexToVisible(index: Int)
  func selectItem(at index: Int)
  func deselectItem(at index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func delegate() -> NSComboBoxDelegate?
  func setDelegate(anObject: NSComboBoxDelegate?)
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxDataSource?
  func addItem(objectValue object: AnyObject)
  func addItems(objectValues objects: [AnyObject])
  func insertItem(objectValue object: AnyObject, at index: Int)
  func removeItem(objectValue object: AnyObject)
  func removeItem(at index: Int)
  func removeAllItems()
  func selectItem(objectValue object: AnyObject?)
  func itemObjectValue(at index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItem(withObjectValue object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
protocol NSComboBoxDataSource : ObjectProtocol {
  optional func numberOfItems(in aComboBox: NSComboBox) -> Int
  optional func comboBox(aComboBox: NSComboBox, objectValueForItemAt index: Int) -> AnyObject
  optional func comboBox(aComboBox: NSComboBox, indexOfItemWithStringValue string: String) -> Int
  optional func comboBox(aComboBox: NSComboBox, completedString string: String) -> String?
}
protocol NSComboBoxDelegate : NSTextFieldDelegate {
  optional func comboBoxWillPopUp(notification: Notification)
  optional func comboBoxWillDismiss(notification: Notification)
  optional func comboBoxSelectionDidChange(notification: Notification)
  optional func comboBoxSelectionIsChanging(notification: Notification)
}
