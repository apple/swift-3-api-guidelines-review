
@available(tvOS 8.0, *)
class SKRange : NSObject, NSCoding, NSCopying {
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
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
class SKConstraint : NSObject, NSCoding, NSCopying {
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
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
