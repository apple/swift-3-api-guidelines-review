
class NSTableHeaderView : NSView {
  unowned(unsafe) var tableView: @sil_unmanaged NSTableView?
  var draggedColumn: Int { get }
  var draggedDistance: CGFloat { get }
  var resizedColumn: Int { get }
  func headerRectOf(column column: Int) -> Rect
  func columnAt(point: Point) -> Int
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
