
class NSSegmentedCell : NSActionCell {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegmentWithTag(_ tag: Int) -> Bool
  func makeNextSegmentKey()
  func makePreviousSegmentKey()
  var trackingMode: NSSegmentSwitchTracking
  func setWidth(_ width: CGFloat, forSegment segment: Int)
  func widthForSegment(_ segment: Int) -> CGFloat
  func setImage(_ image: NSImage?, forSegment segment: Int)
  func imageForSegment(_ segment: Int) -> NSImage?
  @available(OSX 10.5, *)
  func setImageScaling(_ scaling: NSImageScaling, forSegment segment: Int)
  @available(OSX 10.5, *)
  func imageScalingForSegment(_ segment: Int) -> NSImageScaling
  func setLabel(_ label: String, forSegment segment: Int)
  func labelForSegment(_ segment: Int) -> String?
  func setSelected(_ selected: Bool, forSegment segment: Int)
  func isSelectedForSegment(_ segment: Int) -> Bool
  func setEnabled(_ enabled: Bool, forSegment segment: Int)
  func isEnabledForSegment(_ segment: Int) -> Bool
  func setMenu(_ menu: NSMenu?, forSegment segment: Int)
  func menuForSegment(_ segment: Int) -> NSMenu?
  func setToolTip(_ toolTip: String?, forSegment segment: Int)
  func toolTipForSegment(_ segment: Int) -> String?
  func setTag(_ tag: Int, forSegment segment: Int)
  func tagForSegment(_ segment: Int) -> Int
  @available(OSX 10.5, *)
  var segmentStyle: NSSegmentStyle
  func drawSegment(_ segment: Int, inFrame frame: NSRect, withView controlView: NSView)
}
extension NSSegmentedCell {
  @available(OSX 10.5, *)
  func interiorBackgroundStyleForSegment(_ segment: Int) -> NSBackgroundStyle
}
