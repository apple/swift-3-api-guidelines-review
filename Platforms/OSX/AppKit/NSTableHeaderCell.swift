
class NSTableHeaderCell : NSTextFieldCell {
  func drawSortIndicator(frame cellFrame: NSRect, in controlView: NSView, ascending ascending: Bool, priority priority: Int)
  func sortIndicatorRect(forBounds theRect: NSRect) -> NSRect
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
