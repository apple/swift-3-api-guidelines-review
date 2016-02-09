
class NSSegmentedCell : NSActionCell {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegment(withTag tag: Int) -> Bool
  func makeNextSegmentKey()
  func makePreviousSegmentKey()
  var trackingMode: NSSegmentSwitchTracking
  func setWidth(width: CGFloat, forSegment segment: Int)
  func width(forSegment segment: Int) -> CGFloat
  func setImage(image: NSImage?, forSegment segment: Int)
  func image(forSegment segment: Int) -> NSImage?
  @available(OSX 10.5, *)
  func setImageScaling(scaling: NSImageScaling, forSegment segment: Int)
  @available(OSX 10.5, *)
  func imageScaling(forSegment segment: Int) -> NSImageScaling
  func setLabel(label: String, forSegment segment: Int)
  func label(forSegment segment: Int) -> String?
  func setSelected(selected: Bool, forSegment segment: Int)
  func isSelected(forSegment segment: Int) -> Bool
  func setEnabled(enabled: Bool, forSegment segment: Int)
  func isEnabled(forSegment segment: Int) -> Bool
  func setMenu(menu: NSMenu?, forSegment segment: Int)
  func menu(forSegment segment: Int) -> NSMenu?
  func setToolTip(toolTip: String?, forSegment segment: Int)
  func toolTip(forSegment segment: Int) -> String?
  func setTag(tag: Int, forSegment segment: Int)
  func tag(forSegment segment: Int) -> Int
  @available(OSX 10.5, *)
  var segmentStyle: NSSegmentStyle
  func drawSegment(segment: Int, inFrame frame: Rect, withView controlView: NSView)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
extension NSSegmentedCell {
  @available(OSX 10.5, *)
  func interiorBackgroundStyle(forSegment segment: Int) -> NSBackgroundStyle
}
