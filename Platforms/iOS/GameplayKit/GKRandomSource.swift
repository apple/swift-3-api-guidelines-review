
protocol GKRandom {
  func nextInt() -> Int
  func nextIntWithUpperBound(upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(iOS 9.0, *)
class GKRandomSource : NSObject, GKRandom, NSSecureCoding, NSCopying {
  init()
  init(coder aDecoder: NSCoder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjectsInArray(array: [AnyObject]) -> [AnyObject]
  @available(iOS 9.0, *)
  func nextInt() -> Int
  @available(iOS 9.0, *)
  func nextIntWithUpperBound(upperBound: Int) -> Int
  @available(iOS 9.0, *)
  func nextUniform() -> Float
  @available(iOS 9.0, *)
  func nextBool() -> Bool
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: NSData
  convenience init()
  init(seed: NSData)
  func dropValuesWithCount(count: Int)
  init(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: NSCoder)
}
