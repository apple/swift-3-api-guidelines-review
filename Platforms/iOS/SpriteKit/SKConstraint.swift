
@available(iOS 8.0, *)
class SKRange : Object, Coding, Copying {
  init(lowerLimit lower: CGFloat, upperLimit upper: CGFloat)
  convenience init(lowerLimit lower: CGFloat)
  convenience init(upperLimit upper: CGFloat)
  convenience init(constantValue value: CGFloat)
  convenience init(value: CGFloat, variance: CGFloat)
  class func withNoLimits() -> Self
  var lowerLimit: CGFloat
  var upperLimit: CGFloat
  convenience init()
  @available(iOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class SKConstraint : Object, Coding, Copying {
  var enabled: Bool
  var referenceNode: SKNode?
  class func positionX(range: SKRange) -> Self
  class func positionY(range: SKRange) -> Self
  class func positionX(xRange: SKRange, y yRange: SKRange) -> Self
  class func distance(range: SKRange, to node: SKNode) -> Self
  class func distance(range: SKRange, to point: CGPoint) -> Self
  class func distance(range: SKRange, to point: CGPoint, in node: SKNode) -> Self
  class func zRotation(zRange: SKRange) -> Self
  class func orient(to node: SKNode, offset radians: SKRange) -> Self
  class func orient(to point: CGPoint, offset radians: SKRange) -> Self
  class func orient(to point: CGPoint, in node: SKNode, offset radians: SKRange) -> Self
  init()
  @available(iOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
