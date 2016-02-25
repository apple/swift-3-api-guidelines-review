
struct UISwipeGestureRecognizerDirection : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Right: UISwipeGestureRecognizerDirection { get }
  static var Left: UISwipeGestureRecognizerDirection { get }
  static var Up: UISwipeGestureRecognizerDirection { get }
  static var Down: UISwipeGestureRecognizerDirection { get }
}
@available(iOS 3.2, *)
class UISwipeGestureRecognizer : UIGestureRecognizer {
  var numberOfTouchesRequired: Int
  var direction: UISwipeGestureRecognizerDirection
}
