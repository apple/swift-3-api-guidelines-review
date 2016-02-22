
@available(watchOS 2.0, *)
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(rowTypes: [String])
  func setNumberOfRows(numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowController(at index: Int) -> AnyObject?
  func insertRows(at rows: NSIndexSet, withRowType rowType: String)
  func removeRows(at rows: NSIndexSet)
  func scrollToRow(at index: Int)
}
