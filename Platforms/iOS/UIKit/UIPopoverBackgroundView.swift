
protocol UIPopoverBackgroundViewMethods {
  static func arrowBase() -> CGFloat
  static func contentViewInsets() -> UIEdgeInsets
  static func arrowHeight() -> CGFloat
}
@available(iOS 5.0, *)
class UIPopoverBackgroundView : UIView, UIPopoverBackgroundViewMethods {
  var arrowOffset: CGFloat
  var arrowDirection: UIPopoverArrowDirection
  @available(iOS 6.0, *)
  class func wantsDefaultContentAppearance() -> Bool
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
  @available(iOS 5.0, *)
  class func arrowBase() -> CGFloat
  @available(iOS 5.0, *)
  class func contentViewInsets() -> UIEdgeInsets
  @available(iOS 5.0, *)
  class func arrowHeight() -> CGFloat
}
