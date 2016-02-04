
@available(iOS 9.0, *)
class GKBehavior : NSObject, NSFastEnumeration {
  var goalCount: Int { get }
  convenience init(goal: GKGoal, weight: Float)
  convenience init(goals: [GKGoal])
  convenience init(goals: [GKGoal], andWeights weights: [NSNumber])
  convenience init(weightedGoals: [GKGoal : NSNumber])
  func setWeight(weight: Float, forGoal goal: GKGoal)
  func weightForGoal(goal: GKGoal) -> Float
  func removeGoal(goal: GKGoal)
  func removeAllGoals()
  subscript (idx: Int) -> GKGoal { get }
  subscript (goal: GKGoal) -> NSNumber
  init()
  @available(iOS 9.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
