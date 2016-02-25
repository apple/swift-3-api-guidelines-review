
class NSTableHeaderCell : NSTextFieldCell {
  func drawSortIndicatorWithFrame(_ cellFrame: NSRect, inView controlView: NSView, ascending ascending: Bool, priority priority: Int)
  func sortIndicatorRectForBounds(_ theRect: NSRect) -> NSRect
}
