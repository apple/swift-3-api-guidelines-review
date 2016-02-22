
@available(iOS 3.2, *)
class UITapGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  init(target target: AnyObject?, action action: Selector)
  convenience init()
}
