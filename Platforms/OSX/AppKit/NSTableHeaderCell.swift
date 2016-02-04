
class NSTableHeaderCell : NSTextFieldCell {
  func drawSortIndicatorWithFrame(cellFrame: Rect, in controlView: NSView, ascending: Bool, priority: Int)
  func sortIndicatorRectForBounds(theRect: Rect) -> Rect
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
