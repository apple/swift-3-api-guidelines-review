
class NSSegmentedCell : NSActionCell {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegmentWithTag(tag: Int) -> Bool
  func makeNextSegmentKey()
  func makePreviousSegmentKey()
  var trackingMode: NSSegmentSwitchTracking
  func setWidth(width: CGFloat, forSegment segment: Int)
  func widthForSegment(segment: Int) -> CGFloat
  func setImage(image: NSImage?, forSegment segment: Int)
  func imageForSegment(segment: Int) -> NSImage?
  @available(OSX 10.5, *)
  func setImageScaling(scaling: NSImageScaling, forSegment segment: Int)
  @available(OSX 10.5, *)
  func imageScalingForSegment(segment: Int) -> NSImageScaling
  func setLabel(label: String, forSegment segment: Int)
  func labelForSegment(segment: Int) -> String?
  func setSelected(selected: Bool, forSegment segment: Int)
  func isSelectedForSegment(segment: Int) -> Bool
  func setEnabled(enabled: Bool, forSegment segment: Int)
  func isEnabledForSegment(segment: Int) -> Bool
  func setMenu(menu: NSMenu?, forSegment segment: Int)
  func menuForSegment(segment: Int) -> NSMenu?
  func setToolTip(toolTip: String?, forSegment segment: Int)
  func toolTipForSegment(segment: Int) -> String?
  func setTag(tag: Int, forSegment segment: Int)
  func tagForSegment(segment: Int) -> Int
  @available(OSX 10.5, *)
  var segmentStyle: NSSegmentStyle
  func drawSegment(segment: Int, inFrame frame: NSRect, withView controlView: NSView)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSSegmentedCell {
  @available(OSX 10.5, *)
  func interiorBackgroundStyleForSegment(segment: Int) -> NSBackgroundStyle
}
