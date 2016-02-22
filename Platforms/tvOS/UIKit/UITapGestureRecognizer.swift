
@available(tvOS 3.2, *)
class UITapGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  init(target target: AnyObject?, action action: Selector)
  convenience init()
}
