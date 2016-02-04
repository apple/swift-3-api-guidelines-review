
@available(OSX 10.7, *)
class NSTableRowView : NSView, NSAccessibilityRow {
  var selectionHighlightStyle: NSTableViewSelectionHighlightStyle
  var emphasized: Bool
  var groupRowStyle: Bool
  var selected: Bool
  @available(OSX 10.10, *)
  var previousRowSelected: Bool
  var nextRowSelected: Bool
  var floating: Bool
  var targetForDropOperation: Bool
  var draggingDestinationFeedbackStyle: NSTableViewDraggingDestinationFeedbackStyle
  var indentationForDropOperation: CGFloat
  var interiorBackgroundStyle: NSBackgroundStyle { get }
  @NSCopying var backgroundColor: NSColor
  func drawBackgroundInRect(dirtyRect: NSRect)
  func drawSelectionInRect(dirtyRect: NSRect)
  func drawSeparatorInRect(dirtyRect: NSRect)
  func drawDraggingDestinationFeedbackInRect(dirtyRect: NSRect)
  func viewAtColumn(column: Int) -> AnyObject?
  var numberOfColumns: Int { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.7, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.7, *)
  func accessibilityDisclosureLevel() -> Int
}
