
@available(tvOS 3.2, *)
class UITapGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  init(target: AnyObject?, action: Selector)
  convenience init()
}
