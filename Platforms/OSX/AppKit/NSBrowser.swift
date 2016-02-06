
var NSAppKitVersionNumberWithContinuousScrollingBrowser: Double { get }
var NSAppKitVersionNumberWithColumnResizingBrowser: Double { get }
struct __Brflags {
  var firstVisibleCalculationDisabled: UInt32
  var prefersAllColumnUserResizing: UInt32
  var usesSmallScrollers: UInt32
  var usesSmallSizeTitleFont: UInt32
  var actionNeedsToBeSent: UInt32
  var acceptsFirstMouse: UInt32
  var refusesFirstResponder: UInt32
  var disableCompositing: UInt32
  var delegateSelectsCellsByRow: UInt32
  var allowsIncrementalSearching: UInt32
  var time: UInt32
  var hasHorizontalScroller: UInt32
  var prohibitEmptySel: UInt32
  var sendActionOnArrowKeys: UInt32
  var dontDrawTitles: UInt32
  var acceptArrowKeys: UInt32
  var delegateValidatesColumns: UInt32
  var delegateDoesNotCreateRowsInMatrix: UInt32
  var delegateSelectsCellsByString: UInt32
  var delegateSetsTitles: UInt32
  var delegateImplementsWillDisplayCell: UInt32
  var separateColumns: UInt32
  var titleFromPrevious: UInt32
  var isTitled: UInt32
  var reuseColumns: UInt32
  var allowsBranchSelection: UInt32
  var allowsMultipleSelection: UInt32
  init()
  init(firstVisibleCalculationDisabled: UInt32, prefersAllColumnUserResizing: UInt32, usesSmallScrollers: UInt32, usesSmallSizeTitleFont: UInt32, actionNeedsToBeSent: UInt32, acceptsFirstMouse: UInt32, refusesFirstResponder: UInt32, disableCompositing: UInt32, delegateSelectsCellsByRow: UInt32, allowsIncrementalSearching: UInt32, time: UInt32, hasHorizontalScroller: UInt32, prohibitEmptySel: UInt32, sendActionOnArrowKeys: UInt32, dontDrawTitles: UInt32, acceptArrowKeys: UInt32, delegateValidatesColumns: UInt32, delegateDoesNotCreateRowsInMatrix: UInt32, delegateSelectsCellsByString: UInt32, delegateSetsTitles: UInt32, delegateImplementsWillDisplayCell: UInt32, separateColumns: UInt32, titleFromPrevious: UInt32, isTitled: UInt32, reuseColumns: UInt32, allowsBranchSelection: UInt32, allowsMultipleSelection: UInt32)
}
typealias _Brflags = __Brflags
enum NSBrowserColumnResizingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoColumnResizing
  case AutoColumnResizing
  case UserColumnResizing
}
@available(OSX 10.5, *)
enum NSBrowserDropOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case On
  case Above
}
class NSBrowser : NSControl {
  class func cellClass() -> AnyClass
  func loadColumnZero()
  var isLoaded: Bool { get }
  var doubleAction: Selector
  func setCellClass(factoryId: AnyClass)
  var cellPrototype: AnyObject!
  unowned(unsafe) var delegate: @sil_unmanaged NSBrowserDelegate?
  var reusesColumns: Bool
  var hasHorizontalScroller: Bool
  @available(OSX 10.6, *)
  var autohidesScroller: Bool
  var separatesColumns: Bool
  var isTitled: Bool
  var minColumnWidth: CGFloat
  var maxVisibleColumns: Int
  var allowsMultipleSelection: Bool
  var allowsBranchSelection: Bool
  var allowsEmptySelection: Bool
  var takesTitleFromPreviousColumn: Bool
  var sendsActionOnArrowKeys: Bool
  @available(OSX 10.6, *)
  func itemAt(indexPath: IndexPath) -> AnyObject?
  @available(OSX 10.6, *)
  func itemAt(row row: Int, inColumn column: Int) -> AnyObject?
  @available(OSX 10.6, *)
  func indexPathFor(column column: Int) -> IndexPath
  @available(OSX 10.6, *)
  func isLeafItem(item: AnyObject?) -> Bool
  @available(OSX 10.6, *)
  func reloadDataFor(rowIndexes rowIndexes: IndexSet, inColumn column: Int)
  @available(OSX 10.6, *)
  func parentForItemsIn(column column: Int) -> AnyObject?
  @available(OSX 10.6, *)
  func scrollRowToVisible(row: Int, inColumn column: Int)
  func setTitle(aString: String, ofColumn column: Int)
  func titleOf(column column: Int) -> String?
  var pathSeparator: String
  func setPath(path: String) -> Bool
  func path() -> String
  func pathTo(column column: Int) -> String
  @available(OSX 10.6, *)
  var clickedColumn: Int { get }
  @available(OSX 10.6, *)
  var clickedRow: Int { get }
  var selectedColumn: Int { get }
  func selectedCellIn(column column: Int) -> AnyObject?
  var selectedCells: [NSCell]? { get }
  func selectRow(row: Int, inColumn column: Int)
  func selectedRowIn(column column: Int) -> Int
  @available(OSX 10.6, *)
  @NSCopying var selectionIndexPath: IndexPath
  @available(OSX 10.6, *)
  var selectionIndexPaths: [IndexPath]
  @available(OSX 10.5, *)
  func selectRowIndexes(indexes: IndexSet, inColumn column: Int)
  @available(OSX 10.5, *)
  func selectedRowIndexesIn(column column: Int) -> IndexSet?
  func reloadColumn(column: Int)
  func validateVisibleColumns()
  func scrollColumnsRightBy(shiftAmount: Int)
  func scrollColumnsLeftBy(shiftAmount: Int)
  func scrollColumnToVisible(column: Int)
  var lastColumn: Int
  func addColumn()
  var numberOfVisibleColumns: Int { get }
  var firstVisibleColumn: Int { get }
  var lastVisibleColumn: Int { get }
  func loadedCellAt(row row: Int, column col: Int) -> AnyObject?
  func selectAll(sender: AnyObject?)
  func tile()
  func doClick(sender: AnyObject?)
  func doDoubleClick(sender: AnyObject?)
  func sendAction() -> Bool
  func titleFrameOf(column column: Int) -> Rect
  func drawTitleOf(column column: Int, in aRect: Rect)
  var titleHeight: CGFloat { get }
  func frameOf(column column: Int) -> Rect
  func frameOfInsideOf(column column: Int) -> Rect
  @available(OSX 10.6, *)
  func frameOf(row row: Int, inColumn column: Int) -> Rect
  @available(OSX 10.6, *)
  func getRow(row: UnsafeMutablePointer<Int>, column: UnsafeMutablePointer<Int>, forPoint point: Point) -> Bool
  func columnWidthFor(columnContentWidth columnContentWidth: CGFloat) -> CGFloat
  func columnContentWidthFor(columnWidth columnWidth: CGFloat) -> CGFloat
  var columnResizingType: NSBrowserColumnResizingType
  var prefersAllColumnUserResizing: Bool
  func setWidth(columnWidth: CGFloat, ofColumn columnIndex: Int)
  func widthOf(column column: Int) -> CGFloat
  @available(OSX 10.6, *)
  var rowHeight: CGFloat
  @available(OSX 10.6, *)
  func noteHeightOfRows(indexesChanged indexSet: IndexSet, inColumn columnIndex: Int)
  @available(OSX 10.6, *)
  func setDefaultColumnWidth(columnWidth: CGFloat)
  @available(OSX 10.6, *)
  func defaultColumnWidth() -> CGFloat
  var columnsAutosaveName: String
  class func removeSavedColumns(autosaveName name: String)
  @available(OSX 10.5, *)
  func canDragRowsWith(rowIndexes: IndexSet, inColumn column: Int, withEvent event: NSEvent) -> Bool
  @available(OSX 10.5, *)
  func draggingImageForRowsWith(rowIndexes: IndexSet, inColumn column: Int, withEvent event: NSEvent, offset dragImageOffset: PointPointer) -> NSImage?
  @available(OSX 10.5, *)
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  @available(OSX 10.5, *)
  var allowsTypeSelect: Bool
  @available(OSX 10.5, *)
  var backgroundColor: NSColor
  @available(OSX 10.6, *)
  func editItemAt(indexPath: IndexPath, withEvent theEvent: NSEvent, select: Bool)
  func selectedCell() -> AnyObject?
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
let NSBrowserColumnConfigurationDidChangeNotification: String
protocol NSBrowserDelegate : ObjectProtocol {
  optional func browser(sender: NSBrowser, numberOfRowsInColumn column: Int) -> Int
  optional func browser(sender: NSBrowser, createRowsForColumn column: Int, in matrix: NSMatrix)
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, numberOfChildrenOfItem item: AnyObject?) -> Int
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, child index: Int, ofItem item: AnyObject?) -> AnyObject
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, isLeafItem item: AnyObject?) -> Bool
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, objectValueForItem item: AnyObject?) -> AnyObject?
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, heightOfRow row: Int, inColumn columnIndex: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func rootItemFor(browser: NSBrowser) -> AnyObject?
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, setObjectValue object: AnyObject?, forItem item: AnyObject?)
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, shouldEditItem item: AnyObject?) -> Bool
  optional func browser(sender: NSBrowser, willDisplayCell cell: AnyObject, atRow row: Int, column: Int)
  optional func browser(sender: NSBrowser, titleOfColumn column: Int) -> String?
  optional func browser(sender: NSBrowser, selectCellWith title: String, inColumn column: Int) -> Bool
  optional func browser(sender: NSBrowser, selectRow row: Int, inColumn column: Int) -> Bool
  optional func browser(sender: NSBrowser, isColumnValid column: Int) -> Bool
  optional func browserWillScroll(sender: NSBrowser)
  optional func browserDidScroll(sender: NSBrowser)
  optional func browser(browser: NSBrowser, shouldSizeColumn columnIndex: Int, forUserResize: Bool, toWidth suggestedWidth: CGFloat) -> CGFloat
  optional func browser(browser: NSBrowser, sizeToFitWidthOfColumn columnIndex: Int) -> CGFloat
  optional func browserColumnConfigurationDidChange(notification: Notification)
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, shouldShowCellExpansionForRow row: Int, column: Int) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, writeRowsWith rowIndexes: IndexSet, inColumn column: Int, to pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, namesOfPromisedFilesDroppedAtDestination dropDestination: URL, forDraggedRowsWith rowIndexes: IndexSet, inColumn column: Int) -> [String]
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, canDragRowsWith rowIndexes: IndexSet, inColumn column: Int, withEvent event: NSEvent) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, draggingImageForRowsWith rowIndexes: IndexSet, inColumn column: Int, withEvent event: NSEvent, offset dragImageOffset: PointPointer) -> NSImage?
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, validateDrop info: NSDraggingInfo, proposedRow row: UnsafeMutablePointer<Int>, column: UnsafeMutablePointer<Int>, dropOperation: UnsafeMutablePointer<NSBrowserDropOperation>) -> NSDragOperation
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, acceptDrop info: NSDraggingInfo, atRow row: Int, column: Int, dropOperation: NSBrowserDropOperation) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, typeSelectStringForRow row: Int, inColumn column: Int) -> String
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, inColumn column: Int, forString searchString: String?) -> Int
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, previewViewControllerForLeafItem item: AnyObject) -> NSViewController?
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, headerViewControllerForItem item: AnyObject?) -> NSViewController?
  optional func browser(browser: NSBrowser, didChangeLastColumn oldLastColumn: Int, toColumn column: Int)
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, selectionIndexesForProposedSelection proposedSelectionIndexes: IndexSet, inColumn column: Int) -> IndexSet
}
extension NSBrowser {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func setMatrixClass(factoryId: AnyClass)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func matrixClass() -> AnyClass
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func columnOf(matrix: NSMatrix) -> Int
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func matrixIn(column column: Int) -> NSMatrix?
}
