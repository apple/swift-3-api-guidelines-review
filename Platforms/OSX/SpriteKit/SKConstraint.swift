
@available(OSX 10.10, *)
class SKRange : NSObject, NSCoding, NSCopying {
  init(lowerLimit lower: CGFloat, upperLimit upper: CGFloat)
  convenience init(lowerLimit lower: CGFloat)
  convenience init(upperLimit upper: CGFloat)
  convenience init(constantValue value: CGFloat)
  convenience init(value value: CGFloat, variance variance: CGFloat)
  class func withNoLimits() -> Self
  var lowerLimit: CGFloat
  var upperLimit: CGFloat
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.10, *)
class SKConstraint : NSObject, NSCoding, NSCopying {
  var enabled: Bool
  var referenceNode: SKNode?
  class func positionX(_ range: SKRange) -> Self
  class func positionY(_ range: SKRange) -> Self
  class func positionX(_ xRange: SKRange, y yRange: SKRange) -> Self
  class func distance(_ range: SKRange, to node: SKNode) -> Self
  class func distance(_ range: SKRange, to point: CGPoint) -> Self
  class func distance(_ range: SKRange, to point: CGPoint, in node: SKNode) -> Self
  class func zRotation(_ zRange: SKRange) -> Self
  class func orient(to node: SKNode, offset radians: SKRange) -> Self
  class func orient(to point: CGPoint, offset radians: SKRange) -> Self
  class func orient(to point: CGPoint, in node: SKNode, offset radians: SKRange) -> Self
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
