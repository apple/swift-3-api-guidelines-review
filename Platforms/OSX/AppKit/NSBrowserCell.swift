
class NSBrowserCell : NSCell {
  class func branchImage() -> NSImage?
  class func highlightedBranchImage() -> NSImage?
  func highlightColorInView(controlView: NSView) -> NSColor?
  var leaf: Bool
  var loaded: Bool
  func reset()
  func set()
  var image: NSImage?
  var alternateImage: NSImage?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
