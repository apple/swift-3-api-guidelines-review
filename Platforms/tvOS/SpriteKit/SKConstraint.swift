
@available(tvOS 8.0, *)
class SKRange : NSObject, NSCoding, NSCopying {
  init(lowerLimit lower: CGFloat, upperLimit upper: CGFloat)
  convenience init(lowerLimit lower: CGFloat)
  convenience init(upperLimit upper: CGFloat)
  convenience init(constantValue value: CGFloat)
  convenience init(value value: CGFloat, variance variance: CGFloat)
  class func rangeWithNoLimits() -> Self
  var lowerLimit: CGFloat
  var upperLimit: CGFloat
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(tvOS 8.0, *)
class SKConstraint : NSObject, NSCoding, NSCopying {
  var enabled: Bool
  var referenceNode: SKNode?
  class func positionX(_ range: SKRange) -> Self
  class func positionY(_ range: SKRange) -> Self
  class func positionX(_ xRange: SKRange, y yRange: SKRange) -> Self
  class func distance(_ range: SKRange, toNode node: SKNode) -> Self
  class func distance(_ range: SKRange, toPoint point: CGPoint) -> Self
  class func distance(_ range: SKRange, toPoint point: CGPoint, inNode node: SKNode) -> Self
  class func zRotation(_ zRange: SKRange) -> Self
  class func orientToNode(_ node: SKNode, offset radians: SKRange) -> Self
  class func orientToPoint(_ point: CGPoint, offset radians: SKRange) -> Self
  class func orientToPoint(_ point: CGPoint, inNode node: SKNode, offset radians: SKRange) -> Self
  @available(tvOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
