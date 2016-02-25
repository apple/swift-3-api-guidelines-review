
struct UIControlEvents : OptionSetType {
  init(rawValue rawValue: UInt)
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
  @available(iOS 9.0, *)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Top
  case Bottom
  case Fill
}
enum UIControlContentHorizontalAlignment : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Left
  case Right
  case Fill
}
struct UIControlState : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Normal: UIControlState { get }
  static var Highlighted: UIControlState { get }
  static var Disabled: UIControlState { get }
  static var Selected: UIControlState { get }
  @available(iOS 9.0, *)
  static var Focused: UIControlState { get }
  static var Application: UIControlState { get }
  static var Reserved: UIControlState { get }
}
@available(iOS 2.0, *)
class UIControl : UIView {
  var enabled: Bool
  var selected: Bool
  var highlighted: Bool
  var contentVerticalAlignment: UIControlContentVerticalAlignment
  var contentHorizontalAlignment: UIControlContentHorizontalAlignment
  var state: UIControlState { get }
  var tracking: Bool { get }
  var touchInside: Bool { get }
  func beginTrackingWithTouch(_ touch: UITouch, withEvent event: UIEvent?) -> Bool
  func continueTrackingWithTouch(_ touch: UITouch, withEvent event: UIEvent?) -> Bool
  func endTrackingWithTouch(_ touch: UITouch?, withEvent event: UIEvent?)
  func cancelTrackingWithEvent(_ event: UIEvent?)
  func addTarget(_ target: AnyObject?, action action: Selector, forControlEvents controlEvents: UIControlEvents)
  func removeTarget(_ target: AnyObject?, action action: Selector, forControlEvents controlEvents: UIControlEvents)
  func allTargets() -> Set<NSObject>
  func allControlEvents() -> UIControlEvents
  func actionsForTarget(_ target: AnyObject?, forControlEvent controlEvent: UIControlEvents) -> [String]?
  func sendAction(_ action: Selector, to target: AnyObject?, forEvent event: UIEvent?)
  func sendActionsForControlEvents(_ controlEvents: UIControlEvents)
}
