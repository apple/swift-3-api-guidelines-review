
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
  func drawBackgroundInRect(_ dirtyRect: NSRect)
  func drawSelectionInRect(_ dirtyRect: NSRect)
  func drawSeparatorInRect(_ dirtyRect: NSRect)
  func drawDraggingDestinationFeedbackInRect(_ dirtyRect: NSRect)
  func viewAtColumn(_ column: Int) -> AnyObject?
  var numberOfColumns: Int { get }
}
