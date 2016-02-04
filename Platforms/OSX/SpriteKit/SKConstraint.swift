
@available(OSX 10.10, *)
class SKRange : NSObject, NSCoding, NSCopying {
  init(lowerLimit lower: CGFloat, upperLimit upper: CGFloat)
  convenience init(lowerLimit lower: CGFloat)
  convenience init(upperLimit upper: CGFloat)
  convenience init(constantValue value: CGFloat)
  convenience init(value: CGFloat, variance: CGFloat)
  class func rangeWithNoLimits() -> Self
  var lowerLimit: CGFloat
  var upperLimit: CGFloat
  convenience init()
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class SKConstraint : NSObject, NSCoding, NSCopying {
  var enabled: Bool
  var referenceNode: SKNode?
  class func positionX(range: SKRange) -> Self
  class func positionY(range: SKRange) -> Self
  class func positionX(xRange: SKRange, y yRange: SKRange) -> Self
  class func distance(range: SKRange, toNode node: SKNode) -> Self
  class func distance(range: SKRange, toPoint point: CGPoint) -> Self
  class func distance(range: SKRange, toPoint point: CGPoint, inNode node: SKNode) -> Self
  class func zRotation(zRange: SKRange) -> Self
  class func orientToNode(node: SKNode, offset radians: SKRange) -> Self
  class func orientToPoint(point: CGPoint, offset radians: SKRange) -> Self
  class func orientToPoint(point: CGPoint, inNode node: SKNode, offset radians: SKRange) -> Self
  init()
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
