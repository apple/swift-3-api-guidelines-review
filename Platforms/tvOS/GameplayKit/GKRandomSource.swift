
protocol GKRandom {
  func nextInt() -> Int
  func nextIntWithUpperBound(_ upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(tvOS 9.0, *)
class GKRandomSource : NSObject, GKRandom, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjectsInArray(_ array: [AnyObject]) -> [AnyObject]
  @available(tvOS 9.0, *)
  func nextInt() -> Int
  @available(tvOS 9.0, *)
  func nextIntWithUpperBound(_ upperBound: Int) -> Int
  @available(tvOS 9.0, *)
  func nextUniform() -> Float
  @available(tvOS 9.0, *)
  func nextBool() -> Bool
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(tvOS 9.0, *)
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: NSData
  init(seed seed: NSData)
  func dropValuesWithCount(_ count: Int)
}
@available(tvOS 9.0, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  init(seed seed: UInt64)
}
@available(tvOS 9.0, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  init(seed seed: UInt64)
}
