
@available(OSX 10.11, *)
class NSLayoutAnchor : Object {
  func constraintEqual(to anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqual(to anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqual(to anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqual(to anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqual(to anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqual(to anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
@available(OSX 10.11, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor {
  init()
}
@available(OSX 10.11, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor {
  init()
}
@available(OSX 10.11, *)
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
  init()
}
