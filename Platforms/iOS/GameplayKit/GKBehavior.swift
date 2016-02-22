
@available(iOS 9.0, *)
class GKBehavior : NSObject, NSFastEnumeration {
  var goalCount: Int { get }
  convenience init(goal: GKGoal, weight: Float)
  convenience init(goals: [GKGoal])
  convenience init(goals: [GKGoal], andWeights weights: [NSNumber])
  convenience init(weightedGoals: [GKGoal : NSNumber])
  func setWeight(weight: Float, for goal: GKGoal)
  func weight(for goal: GKGoal) -> Float
  func remove(goal: GKGoal)
  func removeAllGoals()
  subscript(idx: Int) -> GKGoal { get }
  subscript(goal: GKGoal) -> NSNumber
  init()
  @available(iOS 9.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
