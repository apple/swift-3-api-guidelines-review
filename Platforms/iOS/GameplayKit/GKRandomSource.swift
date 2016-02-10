
protocol GKRandom {
  func nextInt() -> Int
  func nextInt(withUpperBound upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(iOS 9.0, *)
class GKRandomSource : Object, GKRandom, SecureCoding, Copying {
  init()
  init(coder aDecoder: Coder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjects(in array: [AnyObject]) -> [AnyObject]
  @available(iOS 9.0, *)
  func nextInt() -> Int
  @available(iOS 9.0, *)
  func nextInt(withUpperBound upperBound: Int) -> Int
  @available(iOS 9.0, *)
  func nextUniform() -> Float
  @available(iOS 9.0, *)
  func nextBool() -> Bool
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(withCoder aCoder: Coder)
  @available(iOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: Data
  convenience init()
  init(seed: Data)
  func dropValuesWithCount(count: Int)
  init(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: Coder)
}
