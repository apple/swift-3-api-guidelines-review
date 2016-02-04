
@available(OSX 10.10, *)
enum NSVisualEffectMaterial : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AppearanceBased
  case Titlebar
  @available(OSX 10.11, *)
  case Menu
  @available(OSX 10.11, *)
  case Popover
  @available(OSX 10.11, *)
  case Sidebar
  case Light
  case Dark
  @available(OSX 10.11, *)
  case MediumLight
  @available(OSX 10.11, *)
  case UltraDark
}
@available(OSX 10.10, *)
enum NSVisualEffectBlendingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BehindWindow
  case WithinWindow
}
@available(OSX 10.10, *)
enum NSVisualEffectState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FollowsWindowActiveState
  case Active
  case Inactive
}
@available(OSX 10.10, *)
class NSVisualEffectView : NSView {
  var material: NSVisualEffectMaterial
  var interiorBackgroundStyle: NSBackgroundStyle { get }
  var blendingMode: NSVisualEffectBlendingMode
  var state: NSVisualEffectState
  var maskImage: NSImage?
  func viewDidMoveToWindow()
  func viewWillMoveTo(newWindow: NSWindow?)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
