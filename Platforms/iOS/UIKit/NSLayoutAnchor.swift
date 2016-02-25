
@available(iOS 9.0, *)
class NSLayoutAnchor : NSObject {
  func constraintEqual(to anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqual(to anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqual(to anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqual(to anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqual(to anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqual(to anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
}
@available(iOS 9.0, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor {
}
@available(iOS 9.0, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor {
}
@available(iOS 9.0, *)
class NSLayoutDimension : NSLayoutAnchor {
  func constraintEqual(toConstant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqual(toConstant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqual(toConstant c: CGFloat) -> NSLayoutConstraint!
  func constraintEqual(toAnchor anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqual(toAnchor anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqual(toAnchor anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintEqual(toAnchor anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqual(toAnchor anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqual(toAnchor anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
}
