
protocol GKRandom {
  func nextInt() -> Int
  func nextInt(withUpperBound upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(tvOS 9.0, *)
class GKRandomSource : Object, GKRandom, SecureCoding, Copying {
  init()
  init(coder aDecoder: Coder)
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
  func encode(with aCoder: Coder)
  @available(tvOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: Data
  convenience init()
  init(seed: Data)
  func dropValues(count count: Int)
  init(coder aDecoder: Coder)
}
@available(tvOS 9.0, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: Coder)
}
@available(tvOS 9.0, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: Coder)
}
