
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
  init(firstVisibleCalculationDisabled firstVisibleCalculationDisabled: UInt32, prefersAllColumnUserResizing prefersAllColumnUserResizing: UInt32, usesSmallScrollers usesSmallScrollers: UInt32, usesSmallSizeTitleFont usesSmallSizeTitleFont: UInt32, actionNeedsToBeSent actionNeedsToBeSent: UInt32, acceptsFirstMouse acceptsFirstMouse: UInt32, refusesFirstResponder refusesFirstResponder: UInt32, disableCompositing disableCompositing: UInt32, delegateSelectsCellsByRow delegateSelectsCellsByRow: UInt32, allowsIncrementalSearching allowsIncrementalSearching: UInt32, time time: UInt32, hasHorizontalScroller hasHorizontalScroller: UInt32, prohibitEmptySel prohibitEmptySel: UInt32, sendActionOnArrowKeys sendActionOnArrowKeys: UInt32, dontDrawTitles dontDrawTitles: UInt32, acceptArrowKeys acceptArrowKeys: UInt32, delegateValidatesColumns delegateValidatesColumns: UInt32, delegateDoesNotCreateRowsInMatrix delegateDoesNotCreateRowsInMatrix: UInt32, delegateSelectsCellsByString delegateSelectsCellsByString: UInt32, delegateSetsTitles delegateSetsTitles: UInt32, delegateImplementsWillDisplayCell delegateImplementsWillDisplayCell: UInt32, separateColumns separateColumns: UInt32, titleFromPrevious titleFromPrevious: UInt32, isTitled isTitled: UInt32, reuseColumns reuseColumns: UInt32, allowsBranchSelection allowsBranchSelection: UInt32, allowsMultipleSelection allowsMultipleSelection: UInt32)
}
typealias _Brflags = __Brflags
enum NSBrowserColumnResizingType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NoColumnResizing
  case AutoColumnResizing
  case UserColumnResizing
}
@available(OSX 10.5, *)
enum NSBrowserDropOperation : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case On
  case Above
}
class NSBrowser : NSControl {
  func loadColumnZero()
  var loaded: Bool { get }
  var doubleAction: Selector
  func setCellClass(_ factoryId: AnyClass)
  var cellPrototype: AnyObject!
  unowned(unsafe) var delegate: @sil_unmanaged NSBrowserDelegate?
  var reusesColumns: Bool
  var hasHorizontalScroller: Bool
  @available(OSX 10.6, *)
  var autohidesScroller: Bool
  var separatesColumns: Bool
  var titled: Bool
  var minColumnWidth: CGFloat
  var maxVisibleColumns: Int
  var allowsMultipleSelection: Bool
  var allowsBranchSelection: Bool
  var allowsEmptySelection: Bool
  var takesTitleFromPreviousColumn: Bool
  var sendsActionOnArrowKeys: Bool
  @available(OSX 10.6, *)
  func itemAtIndexPath(_ indexPath: NSIndexPath) -> AnyObject?
  @available(OSX 10.6, *)
  func itemAtRow(_ row: Int, inColumn column: Int) -> AnyObject?
  @available(OSX 10.6, *)
  func indexPathForColumn(_ column: Int) -> NSIndexPath
  @available(OSX 10.6, *)
  func isLeafItem(_ item: AnyObject?) -> Bool
  @available(OSX 10.6, *)
  func reloadDataForRowIndexes(_ rowIndexes: NSIndexSet, inColumn column: Int)
  @available(OSX 10.6, *)
  func parentForItemsInColumn(_ column: Int) -> AnyObject?
  @available(OSX 10.6, *)
  func scrollRowToVisible(_ row: Int, inColumn column: Int)
  func setTitle(_ aString: String, ofColumn column: Int)
  func titleOfColumn(_ column: Int) -> String?
  var pathSeparator: String
  func setPath(_ path: String) -> Bool
  func path() -> String
  func pathToColumn(_ column: Int) -> String
  @available(OSX 10.6, *)
  var clickedColumn: Int { get }
  @available(OSX 10.6, *)
  var clickedRow: Int { get }
  var selectedColumn: Int { get }
  func selectedCellInColumn(_ column: Int) -> AnyObject?
  var selectedCells: [NSCell]? { get }
  func selectRow(_ row: Int, inColumn column: Int)
  func selectedRowInColumn(_ column: Int) -> Int
  @available(OSX 10.6, *)
  @NSCopying var selectionIndexPath: NSIndexPath
  @available(OSX 10.6, *)
  var selectionIndexPaths: [NSIndexPath]
  @available(OSX 10.5, *)
  func selectRowIndexes(_ indexes: NSIndexSet, inColumn column: Int)
  @available(OSX 10.5, *)
  func selectedRowIndexesInColumn(_ column: Int) -> NSIndexSet?
  func reloadColumn(_ column: Int)
  func validateVisibleColumns()
  func scrollColumnsRightBy(_ shiftAmount: Int)
  func scrollColumnsLeftBy(_ shiftAmount: Int)
  func scrollColumnToVisible(_ column: Int)
  var lastColumn: Int
  func addColumn()
  var numberOfVisibleColumns: Int { get }
  var firstVisibleColumn: Int { get }
  var lastVisibleColumn: Int { get }
  func loadedCellAtRow(_ row: Int, column col: Int) -> AnyObject?
  func tile()
  func doClick(_ sender: AnyObject?)
  func doDoubleClick(_ sender: AnyObject?)
  func sendAction() -> Bool
  func titleFrameOfColumn(_ column: Int) -> NSRect
  func drawTitleOfColumn(_ column: Int, inRect aRect: NSRect)
  var titleHeight: CGFloat { get }
  func frameOfColumn(_ column: Int) -> NSRect
  func frameOfInsideOfColumn(_ column: Int) -> NSRect
  @available(OSX 10.6, *)
  func frameOfRow(_ row: Int, inColumn column: Int) -> NSRect
  @available(OSX 10.6, *)
  func getRow(_ row: UnsafeMutablePointer<Int>, column column: UnsafeMutablePointer<Int>, forPoint point: NSPoint) -> Bool
  func columnWidthForColumnContentWidth(_ columnContentWidth: CGFloat) -> CGFloat
  func columnContentWidthForColumnWidth(_ columnWidth: CGFloat) -> CGFloat
  var columnResizingType: NSBrowserColumnResizingType
  var prefersAllColumnUserResizing: Bool
  func setWidth(_ columnWidth: CGFloat, ofColumn columnIndex: Int)
  func widthOfColumn(_ column: Int) -> CGFloat
  @available(OSX 10.6, *)
  var rowHeight: CGFloat
  @available(OSX 10.6, *)
  func noteHeightOfRowsWithIndexesChanged(_ indexSet: NSIndexSet, inColumn columnIndex: Int)
  @available(OSX 10.6, *)
  func setDefaultColumnWidth(_ columnWidth: CGFloat)
  @available(OSX 10.6, *)
  func defaultColumnWidth() -> CGFloat
  var columnsAutosaveName: String
  class func removeSavedColumnsWithAutosaveName(_ name: String)
  @available(OSX 10.5, *)
  func canDragRowsWithIndexes(_ rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent) -> Bool
  @available(OSX 10.5, *)
  func draggingImageForRowsWithIndexes(_ rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage?
  @available(OSX 10.5, *)
  func setDraggingSourceOperationMask(_ mask: NSDragOperation, forLocal isLocal: Bool)
  @available(OSX 10.5, *)
  var allowsTypeSelect: Bool
  @available(OSX 10.5, *)
  var backgroundColor: NSColor
  @available(OSX 10.6, *)
  func editItemAtIndexPath(_ indexPath: NSIndexPath, withEvent theEvent: NSEvent, select select: Bool)
}
let NSBrowserColumnConfigurationDidChangeNotification: String
protocol NSBrowserDelegate : NSObjectProtocol {
  optional func browser(_ sender: NSBrowser, numberOfRowsInColumn column: Int) -> Int
  optional func browser(_ sender: NSBrowser, createRowsForColumn column: Int, inMatrix matrix: NSMatrix)
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, numberOfChildrenOfItem item: AnyObject?) -> Int
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, child index: Int, ofItem item: AnyObject?) -> AnyObject
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, isLeafItem item: AnyObject?) -> Bool
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, objectValueForItem item: AnyObject?) -> AnyObject?
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, heightOfRow row: Int, inColumn columnIndex: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func rootItemForBrowser(_ browser: NSBrowser) -> AnyObject?
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, setObjectValue object: AnyObject?, forItem item: AnyObject?)
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, shouldEditItem item: AnyObject?) -> Bool
  optional func browser(_ sender: NSBrowser, willDisplayCell cell: AnyObject, atRow row: Int, column column: Int)
  optional func browser(_ sender: NSBrowser, titleOfColumn column: Int) -> String?
  optional func browser(_ sender: NSBrowser, selectCellWithString title: String, inColumn column: Int) -> Bool
  optional func browser(_ sender: NSBrowser, selectRow row: Int, inColumn column: Int) -> Bool
  optional func browser(_ sender: NSBrowser, isColumnValid column: Int) -> Bool
  optional func browserWillScroll(_ sender: NSBrowser)
  optional func browserDidScroll(_ sender: NSBrowser)
  optional func browser(_ browser: NSBrowser, shouldSizeColumn columnIndex: Int, forUserResize forUserResize: Bool, toWidth suggestedWidth: CGFloat) -> CGFloat
  optional func browser(_ browser: NSBrowser, sizeToFitWidthOfColumn columnIndex: Int) -> CGFloat
  optional func browserColumnConfigurationDidChange(_ notification: NSNotification)
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, shouldShowCellExpansionForRow row: Int, column column: Int) -> Bool
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, writeRowsWithIndexes rowIndexes: NSIndexSet, inColumn column: Int, toPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedRowsWithIndexes rowIndexes: NSIndexSet, inColumn column: Int) -> [String]
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, canDragRowsWithIndexes rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent) -> Bool
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, draggingImageForRowsWithIndexes rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage?
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, validateDrop info: NSDraggingInfo, proposedRow row: UnsafeMutablePointer<Int>, column column: UnsafeMutablePointer<Int>, dropOperation dropOperation: UnsafeMutablePointer<NSBrowserDropOperation>) -> NSDragOperation
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, acceptDrop info: NSDraggingInfo, atRow row: Int, column column: Int, dropOperation dropOperation: NSBrowserDropOperation) -> Bool
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, typeSelectStringForRow row: Int, inColumn column: Int) -> String
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, shouldTypeSelectForEvent event: NSEvent, withCurrentSearchString searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func browser(_ browser: NSBrowser, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, inColumn column: Int, forString searchString: String?) -> Int
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, previewViewControllerForLeafItem item: AnyObject) -> NSViewController?
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, headerViewControllerForItem item: AnyObject?) -> NSViewController?
  optional func browser(_ browser: NSBrowser, didChangeLastColumn oldLastColumn: Int, toColumn column: Int)
  @available(OSX 10.6, *)
  optional func browser(_ browser: NSBrowser, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet, inColumn column: Int) -> NSIndexSet
}
extension NSBrowser {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func setMatrixClass(_ factoryId: AnyClass)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func matrixClass() -> AnyClass
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func columnOfMatrix(_ matrix: NSMatrix) -> Int
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func matrixInColumn(_ column: Int) -> NSMatrix?
}
