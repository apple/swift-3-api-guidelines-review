
class NSMenuItemCell : NSButtonCell {
  var menuItem: NSMenuItem?
  var needsSizing: Bool
  func calcSize()
  var needsDisplay: Bool
  var stateImageWidth: CGFloat { get }
  var imageWidth: CGFloat { get }
  var titleWidth: CGFloat { get }
  var keyEquivalentWidth: CGFloat { get }
  func stateImageRectForBounds(cellFrame: Rect) -> Rect
  func titleRectForBounds(cellFrame: Rect) -> Rect
  func keyEquivalentRectForBounds(cellFrame: Rect) -> Rect
  func drawSeparatorItemWithFrame(cellFrame: Rect, in controlView: NSView)
  func drawStateImageWithFrame(cellFrame: Rect, in controlView: NSView)
  func drawImageWithFrame(cellFrame: Rect, in controlView: NSView)
  func drawTitleWithFrame(cellFrame: Rect, in controlView: NSView)
  func drawKeyEquivalentWithFrame(cellFrame: Rect, in controlView: NSView)
  func drawBorderAndBackgroundWithFrame(cellFrame: Rect, in controlView: NSView)
  var tag: Int
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
struct __micFlags {
  var needsSizing: UInt32
  var reserved: UInt32
  var needsDisplay: UInt32
  var keyEquivGlyphWidth: UInt32
  var uniqueAgainstMain: UInt32
  var RESERVED: UInt32
  init()
  init(needsSizing: UInt32, reserved: UInt32, needsDisplay: UInt32, keyEquivGlyphWidth: UInt32, uniqueAgainstMain: UInt32, RESERVED: UInt32)
}
