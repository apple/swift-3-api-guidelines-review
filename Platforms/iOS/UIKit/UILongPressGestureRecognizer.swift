
@available(iOS 3.2, *)
class UILongPressGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  var minimumPressDuration: CFTimeInterval
  var allowableMovement: CGFloat
  init(target target: AnyObject?, action action: Selector)
  convenience init()
}
