
class NSBrowserCell : NSCell {
  class func branchImage() -> NSImage?
  class func highlightedBranchImage() -> NSImage?
  func highlightColorInView(_ controlView: NSView) -> NSColor?
  var leaf: Bool
  var loaded: Bool
  func reset()
  func set()
  var alternateImage: NSImage?
}
