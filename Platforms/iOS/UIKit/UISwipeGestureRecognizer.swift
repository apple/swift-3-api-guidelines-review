
struct UISwipeGestureRecognizerDirection : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var right: UISwipeGestureRecognizerDirection { get }
  static var left: UISwipeGestureRecognizerDirection { get }
  static var up: UISwipeGestureRecognizerDirection { get }
  static var down: UISwipeGestureRecognizerDirection { get }
}
@available(iOS 3.2, *)
class UISwipeGestureRecognizer : UIGestureRecognizer {
  var numberOfTouchesRequired: Int
  var direction: UISwipeGestureRecognizerDirection
  init(target: AnyObject?, action: Selector)
  convenience init()
}
