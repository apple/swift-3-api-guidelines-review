
class NSTableHeaderCell : NSTextFieldCell {
  func drawSortIndicator(withFrame cellFrame: Rect, in controlView: NSView, ascending: Bool, priority: Int)
  func sortIndicatorRect(forBounds theRect: Rect) -> Rect
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
