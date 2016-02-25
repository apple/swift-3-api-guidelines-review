
class NSBrowserCell : NSCell {
  class func branchImage() -> NSImage?
  class func highlightedBranchImage() -> NSImage?
  func highlightColor(in controlView: NSView) -> NSColor?
  var isLeaf: Bool
  var isLoaded: Bool
  func reset()
  func set()
  var alternateImage: NSImage?
}
