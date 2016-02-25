
class NSTableHeaderView : NSView {
  unowned(unsafe) var tableView: @sil_unmanaged NSTableView?
  var draggedColumn: Int { get }
  var draggedDistance: CGFloat { get }
  var resizedColumn: Int { get }
  func headerRectOfColumn(_ column: Int) -> NSRect
  func columnAtPoint(_ point: NSPoint) -> Int
}
