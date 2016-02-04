
@available(iOS 8.2, *)
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(rowTypes: [String])
  func setNumberOfRows(numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowControllerAtIndex(index: Int) -> AnyObject?
  func insertRowsAtIndexes(rows: NSIndexSet, withRowType rowType: String)
  func removeRowsAtIndexes(rows: NSIndexSet)
  func scrollToRowAtIndex(index: Int)
}
