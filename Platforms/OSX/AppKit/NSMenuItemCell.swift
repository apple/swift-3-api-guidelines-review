
class NSMenuItemCell : NSButtonCell {
  var menuItem: NSMenuItem?
  var needsSizing: Bool
  func calcSize()
  var needsDisplay: Bool
  var stateImageWidth: CGFloat { get }
  var imageWidth: CGFloat { get }
  var titleWidth: CGFloat { get }
  var keyEquivalentWidth: CGFloat { get }
  func stateImageRectForBounds(_ cellFrame: NSRect) -> NSRect
  func keyEquivalentRectForBounds(_ cellFrame: NSRect) -> NSRect
  func drawSeparatorItemWithFrame(_ cellFrame: NSRect, inView controlView: NSView)
  func drawStateImageWithFrame(_ cellFrame: NSRect, inView controlView: NSView)
  func drawImageWithFrame(_ cellFrame: NSRect, inView controlView: NSView)
  func drawTitleWithFrame(_ cellFrame: NSRect, inView controlView: NSView)
  func drawKeyEquivalentWithFrame(_ cellFrame: NSRect, inView controlView: NSView)
  func drawBorderAndBackgroundWithFrame(_ cellFrame: NSRect, inView controlView: NSView)
}
struct __micFlags {
  var needsSizing: UInt32
  var reserved: UInt32
  var needsDisplay: UInt32
  var keyEquivGlyphWidth: UInt32
  var uniqueAgainstMain: UInt32
  var RESERVED: UInt32
  init()
  init(needsSizing needsSizing: UInt32, reserved reserved: UInt32, needsDisplay needsDisplay: UInt32, keyEquivGlyphWidth keyEquivGlyphWidth: UInt32, uniqueAgainstMain uniqueAgainstMain: UInt32, RESERVED RESERVED: UInt32)
}
