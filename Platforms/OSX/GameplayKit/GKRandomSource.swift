
protocol GKRandom {
  func nextInt() -> Int
  func nextIntWithUpperBound(upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(OSX 10.11, *)
class GKRandomSource : NSObject, GKRandom, NSSecureCoding, NSCopying {
  init()
  init(coder aDecoder: NSCoder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjectsInArray(array: [AnyObject]) -> [AnyObject]
  @available(OSX 10.11, *)
  func nextInt() -> Int
  @available(OSX 10.11, *)
  func nextIntWithUpperBound(upperBound: Int) -> Int
  @available(OSX 10.11, *)
  func nextUniform() -> Float
  @available(OSX 10.11, *)
  func nextBool() -> Bool
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: NSData
  convenience init()
  init(seed: NSData)
  func dropValuesWithCount(count: Int)
  init(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: NSCoder)
}
