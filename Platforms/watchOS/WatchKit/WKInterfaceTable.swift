
@available(watchOS 2.0, *)
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(rowTypes: [String])
  func setNumberOfRows(numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowController(at index: Int) -> AnyObject?
  func insertRows(at rows: IndexSet, withRowType rowType: String)
  func removeRows(at rows: IndexSet)
  func scrollToRow(at index: Int)
}
