
@available(OSX 10.7, *)
class NSTableRowView : NSView, NSAccessibilityRow {
  var selectionHighlightStyle: NSTableViewSelectionHighlightStyle
  var isEmphasized: Bool
  var isGroupRowStyle: Bool
  var isSelected: Bool
  @available(OSX 10.10, *)
  var isPreviousRowSelected: Bool
  var isNextRowSelected: Bool
  var isFloating: Bool
  var isTargetForDropOperation: Bool
  var draggingDestinationFeedbackStyle: NSTableViewDraggingDestinationFeedbackStyle
  var indentationForDropOperation: CGFloat
  var interiorBackgroundStyle: NSBackgroundStyle { get }
  @NSCopying var backgroundColor: NSColor
  func drawBackgroundIn(dirtyRect: Rect)
  func drawSelectionIn(dirtyRect: Rect)
  func drawSeparatorIn(dirtyRect: Rect)
  func drawDraggingDestinationFeedbackIn(dirtyRect: Rect)
  func viewAtColumn(column: Int) -> AnyObject?
  var numberOfColumns: Int { get }
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
  @available(OSX 10.7, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.7, *)
  func accessibilityDisclosureLevel() -> Int
}
