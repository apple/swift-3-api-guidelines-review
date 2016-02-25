
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
  func scrollItemAtIndexToTop(_ index: Int)
  func scrollItemAtIndexToVisible(_ index: Int)
  func selectItemAtIndex(_ index: Int)
  func deselectItemAtIndex(_ index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func delegate() -> NSComboBoxDelegate?
  func setDelegate(_ anObject: NSComboBoxDelegate?)
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxDataSource?
  func addItemWithObjectValue(_ object: AnyObject)
  func addItemsWithObjectValues(_ objects: [AnyObject])
  func insertItemWithObjectValue(_ object: AnyObject, atIndex index: Int)
  func removeItemWithObjectValue(_ object: AnyObject)
  func removeItemAtIndex(_ index: Int)
  func removeAllItems()
  func selectItemWithObjectValue(_ object: AnyObject?)
  func itemObjectValueAtIndex(_ index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItemWithObjectValue(_ object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
}
protocol NSComboBoxDataSource : NSObjectProtocol {
  optional func numberOfItemsInComboBox(_ aComboBox: NSComboBox) -> Int
  optional func comboBox(_ aComboBox: NSComboBox, objectValueForItemAtIndex index: Int) -> AnyObject
  optional func comboBox(_ aComboBox: NSComboBox, indexOfItemWithStringValue string: String) -> Int
  optional func comboBox(_ aComboBox: NSComboBox, completedString string: String) -> String?
}
protocol NSComboBoxDelegate : NSTextFieldDelegate {
  optional func comboBoxWillPopUp(_ notification: NSNotification)
  optional func comboBoxWillDismiss(_ notification: NSNotification)
  optional func comboBoxSelectionDidChange(_ notification: NSNotification)
  optional func comboBoxSelectionIsChanging(_ notification: NSNotification)
}
