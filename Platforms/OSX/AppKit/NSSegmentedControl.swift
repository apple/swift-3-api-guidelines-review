
enum NSSegmentSwitchTracking : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case SelectOne
  case SelectAny
  case Momentary
  @available(OSX 10.10.3, *)
  case MomentaryAccelerator
}
@available(OSX 10.5, *)
enum NSSegmentStyle : Int {
  init?(rawValue rawValue: Int)
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
  func selectSegmentWithTag(_ tag: Int) -> Bool
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
  func setMenu(_ menu: NSMenu?, forSegment segment: Int)
  func menuForSegment(_ segment: Int) -> NSMenu?
  func setSelected(_ selected: Bool, forSegment segment: Int)
  func isSelectedForSegment(_ segment: Int) -> Bool
  func setEnabled(_ enabled: Bool, forSegment segment: Int)
  func isEnabledForSegment(_ segment: Int) -> Bool
  @available(OSX 10.5, *)
  var segmentStyle: NSSegmentStyle
  @available(OSX 10.10.3, *)
  var springLoaded: Bool
  @available(OSX 10.10.3, *)
  var trackingMode: NSSegmentSwitchTracking
  @available(OSX 10.10.3, *)
  var doubleValueForSelectedSegment: Double { get }
}
