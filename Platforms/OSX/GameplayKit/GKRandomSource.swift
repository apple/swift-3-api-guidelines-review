
protocol GKRandom {
  func nextInt() -> Int
  func nextInt(withUpperBound upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
}
@available(OSX 10.11, *)
class GKRandomSource : Object, GKRandom, SecureCoding, Copying {
  init()
  init(coder aDecoder: Coder)
  class func sharedRandom() -> GKRandomSource
  func arrayByShufflingObjects(in array: [AnyObject]) -> [AnyObject]
  @available(OSX 10.11, *)
  func nextInt() -> Int
  @available(OSX 10.11, *)
  func nextInt(withUpperBound upperBound: Int) -> Int
  @available(OSX 10.11, *)
  func nextUniform() -> Float
  @available(OSX 10.11, *)
  func nextBool() -> Bool
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(withCoder aCoder: Coder)
  @available(OSX 10.11, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class GKARC4RandomSource : GKRandomSource {
  @NSCopying var seed: Data
  convenience init()
  init(seed: Data)
  func dropValuesWithCount(count: Int)
  init(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
class GKLinearCongruentialRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
class GKMersenneTwisterRandomSource : GKRandomSource {
  var seed: UInt64
  convenience init()
  init(seed: UInt64)
  init(coder aDecoder: Coder)
}
