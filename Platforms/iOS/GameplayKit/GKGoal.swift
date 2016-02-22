
@available(iOS 9.0, *)
class GKGoal : NSObject, NSCopying {
  convenience init(toSeekAgent agent: GKAgent)
  convenience init(toFleeAgent agent: GKAgent)
  convenience init(toAvoid obstacles: [GKObstacle], maxPredictionTime: NSTimeInterval)
  convenience init(toAvoid agents: [GKAgent], maxPredictionTime: NSTimeInterval)
  convenience init(toSeparateFrom agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toAlignWith agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toCohereWith agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toReachTargetSpeed targetSpeed: Float)
  convenience init(toWander speed: Float)
  convenience init(toInterceptAgent target: GKAgent, maxPredictionTime: NSTimeInterval)
  convenience init(toFollow path: GKPath, maxPredictionTime: NSTimeInterval, forward: Bool)
  convenience init(toStayOn path: GKPath, maxPredictionTime: NSTimeInterval)
  init()
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
