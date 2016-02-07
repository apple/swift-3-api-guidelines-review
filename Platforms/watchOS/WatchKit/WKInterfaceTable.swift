
@available(watchOS 2.0, *)
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(rowTypes: [String])
  func setNumberOfRows(numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowControllerAt(index: Int) -> AnyObject?
  func insertRowsAt(rows: IndexSet, withRowType rowType: String)
  func removeRowsAt(rows: IndexSet)
  func scrollToRowAt(index: Int)
}
