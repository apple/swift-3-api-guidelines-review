
@available(iOS 9.0, *)
class NSLayoutAnchor : NSObject {
  func constraintEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
@available(iOS 9.0, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor {
  init()
}
@available(iOS 9.0, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor {
  init()
}
@available(iOS 9.0, *)
class NSLayoutDimension : NSLayoutAnchor {
  func constraintEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
