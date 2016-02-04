
struct UISwipeGestureRecognizerDirection : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Right: UISwipeGestureRecognizerDirection { get }
  static var Left: UISwipeGestureRecognizerDirection { get }
  static var Up: UISwipeGestureRecognizerDirection { get }
  static var Down: UISwipeGestureRecognizerDirection { get }
}
@available(tvOS 3.2, *)
class UISwipeGestureRecognizer : UIGestureRecognizer {
  var direction: UISwipeGestureRecognizerDirection
  init(target: AnyObject?, action: Selector)
  convenience init()
}
