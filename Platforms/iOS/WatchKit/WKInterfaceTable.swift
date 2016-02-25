
@available(iOS 8.2, *)
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(_ rowTypes: [String])
  func setNumberOfRows(_ numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowControllerAtIndex(_ index: Int) -> AnyObject?
  func insertRowsAtIndexes(_ rows: NSIndexSet, withRowType rowType: String)
  func removeRowsAtIndexes(_ rows: NSIndexSet)
  func scrollToRowAtIndex(_ index: Int)
}
