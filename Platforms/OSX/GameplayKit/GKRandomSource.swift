
protocol GKRandom {
  func nextInt() -> Int
  func nextIntWithUpperBound(_ upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(OSX 10.11, *)
class GKRandomSource : NSObject, GKRandom, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjectsInArray(_ array: [AnyObject]) -> [AnyObject]
  @available(OSX 10.11, *)
  func nextInt() -> Int
  @available(OSX 10.11, *)
  func nextIntWithUpperBound(_ upperBound: Int) -> Int
  @available(OSX 10.11, *)
  func nextUniform() -> Float
  @available(OSX 10.11, *)
  func nextBool() -> Bool
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: NSData
  init(seed seed: NSData)
  func dropValuesWithCount(_ count: Int)
}
@available(OSX 10.11, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  init(seed seed: UInt64)
}
@available(OSX 10.11, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  init(seed seed: UInt64)
}
