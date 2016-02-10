
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
  func drawBackground(in dirtyRect: Rect)
  func drawSelection(in dirtyRect: Rect)
  func drawSeparator(in dirtyRect: Rect)
  func drawDraggingDestinationFeedback(in dirtyRect: Rect)
  func view(atColumn column: Int) -> AnyObject?
  var numberOfColumns: Int { get }
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
  @available(OSX 10.7, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.7, *)
  func accessibilityDisclosureLevel() -> Int
}
