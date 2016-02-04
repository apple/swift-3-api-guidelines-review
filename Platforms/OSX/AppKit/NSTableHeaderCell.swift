
class NSTableHeaderCell : NSTextFieldCell {
  func drawSortIndicatorWithFrame(cellFrame: NSRect, inView controlView: NSView, ascending: Bool, priority: Int)
  func sortIndicatorRectForBounds(theRect: NSRect) -> NSRect
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
