
class NSSegmentedCell : NSActionCell {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegment(tag tag: Int) -> Bool
  func makeNextSegmentKey()
  func makePreviousSegmentKey()
  var trackingMode: NSSegmentSwitchTracking
  func setWidth(width: CGFloat, forSegment segment: Int)
  func widthFor(segment segment: Int) -> CGFloat
  func setImage(image: NSImage?, forSegment segment: Int)
  func imageFor(segment segment: Int) -> NSImage?
  @available(OSX 10.5, *)
  func setImageScaling(scaling: NSImageScaling, forSegment segment: Int)
  @available(OSX 10.5, *)
  func imageScalingFor(segment segment: Int) -> NSImageScaling
  func setLabel(label: String, forSegment segment: Int)
  func labelFor(segment segment: Int) -> String?
  func setSelected(selected: Bool, forSegment segment: Int)
  func isSelectedFor(segment segment: Int) -> Bool
  func setEnabled(enabled: Bool, forSegment segment: Int)
  func isEnabledFor(segment segment: Int) -> Bool
  func setMenu(menu: NSMenu?, forSegment segment: Int)
  func menuFor(segment segment: Int) -> NSMenu?
  func setToolTip(toolTip: String?, forSegment segment: Int)
  func toolTipFor(segment segment: Int) -> String?
  func setTag(tag: Int, forSegment segment: Int)
  func tagFor(segment segment: Int) -> Int
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
  func interiorBackgroundStyleFor(segment segment: Int) -> NSBackgroundStyle
}
