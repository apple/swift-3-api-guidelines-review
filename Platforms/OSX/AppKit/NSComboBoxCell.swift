
class NSComboBoxCell : NSTextFieldCell {
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
  func completedString(_ string: String) -> String?
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxCellDataSource?
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
struct __cbcFlags {
  var usesDataSource: UInt32
  var completes: UInt32
  var buttonBordered: UInt32
  var popUpIsUp: UInt32
  var filteringEvents: UInt32
  var drawing: UInt32
  var synchronizingSelection: UInt32
  var reserved: UInt32
  var visibleItems: UInt32
  init()
  init(usesDataSource usesDataSource: UInt32, completes completes: UInt32, buttonBordered buttonBordered: UInt32, popUpIsUp popUpIsUp: UInt32, filteringEvents filteringEvents: UInt32, drawing drawing: UInt32, synchronizingSelection synchronizingSelection: UInt32, reserved reserved: UInt32, visibleItems visibleItems: UInt32)
}
protocol NSComboBoxCellDataSource : NSObjectProtocol {
  optional func numberOfItemsInComboBoxCell(_ comboBoxCell: NSComboBoxCell) -> Int
  optional func comboBoxCell(_ aComboBoxCell: NSComboBoxCell, objectValueForItemAtIndex index: Int) -> AnyObject
  optional func comboBoxCell(_ aComboBoxCell: NSComboBoxCell, indexOfItemWithStringValue string: String) -> Int
  optional func comboBoxCell(_ aComboBoxCell: NSComboBoxCell, completedString uncompletedString: String) -> String?
}
