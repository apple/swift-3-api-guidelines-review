
class NSTableHeaderView : NSView {
  unowned(unsafe) var tableView: @sil_unmanaged NSTableView?
  var draggedColumn: Int { get }
  var draggedDistance: CGFloat { get }
  var resizedColumn: Int { get }
  func headerRectOfColumn(column: Int) -> NSRect
  func columnAtPoint(point: NSPoint) -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
