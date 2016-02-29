
protocol GKRandom {
  func nextInt() -> Int
  func nextInt(withUpperBound upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(tvOS 9.0, *)
class GKRandomSource : NSObject, GKRandom, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjects(in array: [AnyObject]) -> [AnyObject]
  @available(tvOS 9.0, *)
  func nextInt() -> Int
  @available(tvOS 9.0, *)
  func nextInt(withUpperBound upperBound: Int) -> Int
  @available(tvOS 9.0, *)
  func nextUniform() -> Float
  @available(tvOS 9.0, *)
  func nextBool() -> Bool
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encode(with aCoder: NSCoder)
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: NSData
  init(seed seed: NSData)
  func dropValues(withCount count: Int)
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
