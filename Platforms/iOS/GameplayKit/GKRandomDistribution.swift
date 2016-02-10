
@available(iOS 9.0, *)
class GKRandomDistribution : Object, GKRandom {
  var lowestValue: Int { get }
  var highestValue: Int { get }
  var numberOfPossibleOutcomes: Int { get }
  init(randomSource source: GKRandom, lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  func nextInt() -> Int
  func nextInt(withUpperBound upperBound: Int) -> Int
  func nextUniform() -> Float
  func nextBool() -> Bool
  convenience init(lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  convenience init(forDieWithSideCount sideCount: Int)
  class func d6() -> Self
  class func d20() -> Self
  convenience init()
}
@available(iOS 9.0, *)
class GKGaussianDistribution : GKRandomDistribution {
  var mean: Float { get }
  var deviation: Float { get }
  init(randomSource source: GKRandom, lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  init(randomSource source: GKRandom, mean: Float, deviation: Float)
  convenience init(lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  convenience init(forDieWithSideCount sideCount: Int)
  convenience init()
}
@available(iOS 9.0, *)
class GKShuffledDistribution : GKRandomDistribution {
  init(randomSource source: GKRandom, lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  convenience init(lowestValue lowestInclusive: Int, highestValue highestInclusive: Int)
  convenience init(forDieWithSideCount sideCount: Int)
  convenience init()
}
