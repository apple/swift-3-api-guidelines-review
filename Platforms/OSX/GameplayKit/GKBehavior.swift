
@available(OSX 10.11, *)
class GKBehavior : Object, FastEnumeration {
  var goalCount: Int { get }
  convenience init(goal: GKGoal, weight: Float)
  convenience init(goals: [GKGoal])
  convenience init(goals: [GKGoal], andWeights weights: [Number])
  convenience init(weightedGoals: [GKGoal : Number])
  func setWeight(weight: Float, forGoal goal: GKGoal)
  func weightFor(goal: GKGoal) -> Float
  func remove(goal: GKGoal)
  func removeAllGoals()
  subscript (idx: Int) -> GKGoal { get }
  subscript (goal: GKGoal) -> Number
  init()
  @available(OSX 10.11, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
