
struct UIControlEvents : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TouchDown: UIControlEvents { get }
  static var TouchDownRepeat: UIControlEvents { get }
  static var TouchDragInside: UIControlEvents { get }
  static var TouchDragOutside: UIControlEvents { get }
  static var TouchDragEnter: UIControlEvents { get }
  static var TouchDragExit: UIControlEvents { get }
  static var TouchUpInside: UIControlEvents { get }
  static var TouchUpOutside: UIControlEvents { get }
  static var TouchCancel: UIControlEvents { get }
  static var ValueChanged: UIControlEvents { get }
  @available(tvOS 9.0, *)
  static var PrimaryActionTriggered: UIControlEvents { get }
  static var EditingDidBegin: UIControlEvents { get }
  static var EditingChanged: UIControlEvents { get }
  static var EditingDidEnd: UIControlEvents { get }
  static var EditingDidEndOnExit: UIControlEvents { get }
  static var AllTouchEvents: UIControlEvents { get }
  static var AllEditingEvents: UIControlEvents { get }
  static var ApplicationReserved: UIControlEvents { get }
  static var SystemReserved: UIControlEvents { get }
  static var AllEvents: UIControlEvents { get }
}
enum UIControlContentVerticalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Top
  case Bottom
  case Fill
}
enum UIControlContentHorizontalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Left
  case Right
  case Fill
}
struct UIControlState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Normal: UIControlState { get }
  static var Highlighted: UIControlState { get }
  static var Disabled: UIControlState { get }
  static var Selected: UIControlState { get }
  @available(tvOS 9.0, *)
  static var Focused: UIControlState { get }
  static var Application: UIControlState { get }
  static var Reserved: UIControlState { get }
}
@available(tvOS 2.0, *)
class UIControl : UIView {
  var isEnabled: Bool
  var isSelected: Bool
  var isHighlighted: Bool
  var contentVerticalAlignment: UIControlContentVerticalAlignment
  var contentHorizontalAlignment: UIControlContentHorizontalAlignment
  var state: UIControlState { get }
  var isTracking: Bool { get }
  var isTouchInside: Bool { get }
  func beginTrackingWith(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func continueTrackingWith(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func endTrackingWith(touch: UITouch?, withEvent event: UIEvent?)
  func cancelTracking(event: UIEvent?)
  func addTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func removeTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func allTargets() -> Set<Object>
  func allControlEvents() -> UIControlEvents
  func actionsFor(target target: AnyObject?, forControlEvent controlEvent: UIControlEvents) -> [String]?
  func sendAction(action: Selector, to target: AnyObject?, forEvent event: UIEvent?)
  func sendActionsFor(controlEvents: UIControlEvents)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
