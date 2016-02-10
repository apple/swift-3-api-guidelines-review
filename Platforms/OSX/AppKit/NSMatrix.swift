
enum NSMatrixMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case radioModeMatrix
  case highlightModeMatrix
  case listModeMatrix
  case trackModeMatrix
}
struct __MFlags {
  var reservedMatrix: UInt32
  var cellSizeNeedsAutorecalc: UInt32
  var autorecalculatesCellSize: UInt32
  var drawingContextMenuHighlightOnAllSelectedRows: UInt32
  var drawingContextMenuHighlight: UInt32
  var browserOptimizationsEnabled: UInt32
  var needsRedrawBeforeFirstLiveResizeCache: UInt32
  var tmpAllowNonVisibleCellsToBecomeFirstResponder: UInt32
  var subclassIsSafeForLiveResize: UInt32
  var hasCachedSubclassIsSafeForLiveResize: UInt32
  var liveResizeImageCacheingEnabled: UInt32
  var checkForSimpleTrackingMode: UInt32
  var useSimpleTrackingMode: UInt32
  var refusesFirstResponder: UInt32
  var dontScroll: UInt32
  var changingSelectionWithKeyboard: UInt32
  var onlySetKeyCell: UInt32
  var currentlySelectingCell: UInt32
  var allowsIncrementalSearching: UInt32
  var tabKeyTraversesCellsExplicitlySet: UInt32
  var tabKeyTraversesCells: UInt32
  var drawingAncestor: UInt32
  var autosizeCells: UInt32
  var drawsBackground: UInt32
  var drawsCellBackground: UInt32
  var selectionByRect: UInt32
  var autoscroll: UInt32
  var allowEmptySel: UInt32
  var listMode: UInt32
  var radioMode: UInt32
  var highlightMode: UInt32
  init()
  init(reservedMatrix: UInt32, cellSizeNeedsAutorecalc: UInt32, autorecalculatesCellSize: UInt32, drawingContextMenuHighlightOnAllSelectedRows: UInt32, drawingContextMenuHighlight: UInt32, browserOptimizationsEnabled: UInt32, needsRedrawBeforeFirstLiveResizeCache: UInt32, tmpAllowNonVisibleCellsToBecomeFirstResponder: UInt32, subclassIsSafeForLiveResize: UInt32, hasCachedSubclassIsSafeForLiveResize: UInt32, liveResizeImageCacheingEnabled: UInt32, checkForSimpleTrackingMode: UInt32, useSimpleTrackingMode: UInt32, refusesFirstResponder: UInt32, dontScroll: UInt32, changingSelectionWithKeyboard: UInt32, onlySetKeyCell: UInt32, currentlySelectingCell: UInt32, allowsIncrementalSearching: UInt32, tabKeyTraversesCellsExplicitlySet: UInt32, tabKeyTraversesCells: UInt32, drawingAncestor: UInt32, autosizeCells: UInt32, drawsBackground: UInt32, drawsCellBackground: UInt32, selectionByRect: UInt32, autoscroll: UInt32, allowEmptySel: UInt32, listMode: UInt32, radioMode: UInt32, highlightMode: UInt32)
}
typealias _MFlags = __MFlags
class NSMatrix : NSControl, NSUserInterfaceValidations {
  convenience init(frame frameRect: Rect)
  init(frame frameRect: Rect, mode aMode: NSMatrixMode, prototype aCell: NSCell, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init(frame frameRect: Rect, mode aMode: NSMatrixMode, cellClass factoryId: AnyClass?, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  var cellClass: AnyClass
  @NSCopying var prototype: NSCell?
  func makeCellAt(row row: Int, column col: Int) -> NSCell
  var mode: NSMatrixMode
  var allowsEmptySelection: Bool
  func sendAction(aSelector: Selector, to anObject: AnyObject, forAllCells flag: Bool)
  var cells: [NSCell] { get }
  func sortUsing(comparator: Selector)
  func sort(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  var selectedCells: [NSCell] { get }
  var selectedRow: Int { get }
  var selectedColumn: Int { get }
  var isSelectionByRect: Bool
  func setSelectionFrom(startPos: Int, to endPos: Int, anchor anchorPos: Int, highlight lit: Bool)
  func deselectSelectedCell()
  func deselectAllCells()
  func selectCellAt(row row: Int, column col: Int)
  func selectAll(sender: AnyObject?)
  func selectCell(tag anInt: Int) -> Bool
  var cellSize: Size
  var intercellSpacing: Size
  func setScrollable(flag: Bool)
  @NSCopying var backgroundColor: NSColor
  @NSCopying var cellBackgroundColor: NSColor?
  var drawsCellBackground: Bool
  var drawsBackground: Bool
  func setState(value: Int, atRow row: Int, column col: Int)
  func getNumberOf(rows rowCount: UnsafeMutablePointer<Int>, columns colCount: UnsafeMutablePointer<Int>)
  var numberOfRows: Int { get }
  var numberOfColumns: Int { get }
  func cellAt(row row: Int, column col: Int) -> NSCell?
  func cellFrameAt(row row: Int, column col: Int) -> Rect
  func getRow(row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, of aCell: NSCell) -> Bool
  func getRow(row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, forPoint aPoint: Point) -> Bool
  func renewRows(newRows: Int, columns newCols: Int)
  func putCell(newCell: NSCell, atRow row: Int, column col: Int)
  func addRow()
  func addRow(newCells: [NSCell])
  func insertRow(row: Int)
  func insertRow(row: Int, withCells newCells: [NSCell])
  func removeRow(row: Int)
  func addColumn()
  func addColumn(newCells: [NSCell])
  func insertColumn(column: Int)
  func insertColumn(column: Int, withCells newCells: [NSCell])
  func removeColumn(col: Int)
  func cellWith(tag anInt: Int) -> NSCell?
  var doubleAction: Selector
  var autosizesCells: Bool
  func sizeToCells()
  func setValidateSize(flag: Bool)
  func drawCellAt(row row: Int, column col: Int)
  func highlightCell(flag: Bool, atRow row: Int, column col: Int)
  var isAutoscroll: Bool
  func scrollCellToVisibleAt(row row: Int, column col: Int)
  var mouseDownFlags: Int { get }
  func mouseDown(theEvent: NSEvent)
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func sendAction() -> Bool
  func sendDoubleAction()
  unowned(unsafe) var delegate: @sil_unmanaged NSMatrixDelegate?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: Notification)
  func textDidEndEditing(notification: Notification)
  func textDidChange(notification: Notification)
  func selectText(sender: AnyObject?)
  func selectTextAt(row row: Int, column col: Int) -> NSCell?
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  func resetCursorRects()
  func setToolTip(toolTipString: String?, forCell cell: NSCell)
  func toolTipFor(cell: NSCell) -> String?
  @available(OSX 10.8, *)
  var autorecalculatesCellSize: Bool
  func selectedCell() -> NSCell?
  init?(coder: Coder)
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
}
extension NSMatrix {
  var tabKeyTraversesCells: Bool
  unowned(unsafe) var keyCell: @sil_unmanaged NSCell?
}
protocol NSMatrixDelegate : NSControlTextEditingDelegate {
}
