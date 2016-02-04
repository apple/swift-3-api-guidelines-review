
enum NSMatrixMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RadioModeMatrix
  case HighlightModeMatrix
  case ListModeMatrix
  case TrackModeMatrix
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
  convenience init(frame frameRect: NSRect)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, prototype aCell: NSCell, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, cellClass factoryId: AnyClass?, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  var cellClass: AnyClass
  @NSCopying var prototype: NSCell?
  func makeCellAtRow(row: Int, column col: Int) -> NSCell
  var mode: NSMatrixMode
  var allowsEmptySelection: Bool
  func sendAction(aSelector: Selector, to anObject: AnyObject, forAllCells flag: Bool)
  var cells: [NSCell] { get }
  func sortUsingSelector(comparator: Selector)
  func sortUsingFunction(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  var selectedCells: [NSCell] { get }
  var selectedRow: Int { get }
  var selectedColumn: Int { get }
  var selectionByRect: Bool
  func setSelectionFrom(startPos: Int, to endPos: Int, anchor anchorPos: Int, highlight lit: Bool)
  func deselectSelectedCell()
  func deselectAllCells()
  func selectCellAtRow(row: Int, column col: Int)
  func selectAll(sender: AnyObject?)
  func selectCellWithTag(anInt: Int) -> Bool
  var cellSize: NSSize
  var intercellSpacing: NSSize
  func setScrollable(flag: Bool)
  @NSCopying var backgroundColor: NSColor
  @NSCopying var cellBackgroundColor: NSColor?
  var drawsCellBackground: Bool
  var drawsBackground: Bool
  func setState(value: Int, atRow row: Int, column col: Int)
  func getNumberOfRows(rowCount: UnsafeMutablePointer<Int>, columns colCount: UnsafeMutablePointer<Int>)
  var numberOfRows: Int { get }
  var numberOfColumns: Int { get }
  func cellAtRow(row: Int, column col: Int) -> NSCell?
  func cellFrameAtRow(row: Int, column col: Int) -> NSRect
  func getRow(row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, ofCell aCell: NSCell) -> Bool
  func getRow(row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, forPoint aPoint: NSPoint) -> Bool
  func renewRows(newRows: Int, columns newCols: Int)
  func putCell(newCell: NSCell, atRow row: Int, column col: Int)
  func addRow()
  func addRowWithCells(newCells: [NSCell])
  func insertRow(row: Int)
  func insertRow(row: Int, withCells newCells: [NSCell])
  func removeRow(row: Int)
  func addColumn()
  func addColumnWithCells(newCells: [NSCell])
  func insertColumn(column: Int)
  func insertColumn(column: Int, withCells newCells: [NSCell])
  func removeColumn(col: Int)
  func cellWithTag(anInt: Int) -> NSCell?
  var doubleAction: Selector
  var autosizesCells: Bool
  func sizeToCells()
  func setValidateSize(flag: Bool)
  func drawCellAtRow(row: Int, column col: Int)
  func highlightCell(flag: Bool, atRow row: Int, column col: Int)
  var autoscroll: Bool
  func scrollCellToVisibleAtRow(row: Int, column col: Int)
  var mouseDownFlags: Int { get }
  func mouseDown(theEvent: NSEvent)
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func sendAction() -> Bool
  func sendDoubleAction()
  unowned(unsafe) var delegate: @sil_unmanaged NSMatrixDelegate?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: NSNotification)
  func textDidEndEditing(notification: NSNotification)
  func textDidChange(notification: NSNotification)
  func selectText(sender: AnyObject?)
  func selectTextAtRow(row: Int, column col: Int) -> NSCell?
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  func resetCursorRects()
  func setToolTip(toolTipString: String?, forCell cell: NSCell)
  func toolTipForCell(cell: NSCell) -> String?
  @available(OSX 10.8, *)
  var autorecalculatesCellSize: Bool
  func selectedCell() -> NSCell?
  init?(coder: NSCoder)
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
}
extension NSMatrix {
  var tabKeyTraversesCells: Bool
  unowned(unsafe) var keyCell: @sil_unmanaged NSCell?
}
protocol NSMatrixDelegate : NSControlTextEditingDelegate {
}