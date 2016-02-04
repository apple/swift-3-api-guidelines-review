
enum NSSegmentSwitchTracking : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectOne
  case SelectAny
  case Momentary
  @available(OSX 10.10.3, *)
  case MomentaryAccelerator
}
@available(OSX 10.5, *)
enum NSSegmentStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Rounded
  case RoundRect
  case TexturedSquare
  case SmallSquare
  @available(OSX 10.10, *)
  case Separated
  @available(OSX 10.5, *)
  case TexturedRounded
  @available(OSX 10.5, *)
  case Capsule
}
class NSSegmentedControl : NSControl {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegmentWithTag(tag: Int) -> Bool
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
  func setMenu(menu: NSMenu?, forSegment segment: Int)
  func menuForSegment(segment: Int) -> NSMenu?
  func setSelected(selected: Bool, forSegment segment: Int)
  func isSelectedForSegment(segment: Int) -> Bool
  func setEnabled(enabled: Bool, forSegment segment: Int)
  func isEnabledForSegment(segment: Int) -> Bool
  @available(OSX 10.5, *)
  var segmentStyle: NSSegmentStyle
  @available(OSX 10.10.3, *)
  var isSpringLoaded: Bool
  @available(OSX 10.10.3, *)
  var trackingMode: NSSegmentSwitchTracking
  @available(OSX 10.10.3, *)
  var doubleValueForSelectedSegment: Double { get }
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
