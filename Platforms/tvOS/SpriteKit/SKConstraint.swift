
@available(tvOS 8.0, *)
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
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
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
  class func orientTo(node: SKNode, offset radians: SKRange) -> Self
  class func orientTo(point: CGPoint, offset radians: SKRange) -> Self
  class func orientTo(point: CGPoint, in node: SKNode, offset radians: SKRange) -> Self
  init()
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
