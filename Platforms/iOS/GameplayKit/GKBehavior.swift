
@available(iOS 9.0, *)
class GKBehavior : Object, FastEnumeration {
  var goalCount: Int { get }
  convenience init(goal: GKGoal, weight: Float)
  convenience init(goals: [GKGoal])
  convenience init(goals: [GKGoal], andWeights weights: [Number])
  convenience init(weightedGoals: [GKGoal : Number])
  func setWeight(weight: Float, for goal: GKGoal)
  func weight(for goal: GKGoal) -> Float
  func remove(goal: GKGoal)
  func removeAllGoals()
  subscript(idx: Int) -> GKGoal { get }
  subscript(goal: GKGoal) -> Number
  init()
  @available(iOS 9.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
