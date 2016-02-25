
@available(iOS 9.0, *)
class GKGoal : NSObject, NSCopying {
  convenience init(toSeekAgent agent: GKAgent)
  convenience init(toFleeAgent agent: GKAgent)
  convenience init(toAvoidObstacles obstacles: [GKObstacle], maxPredictionTime maxPredictionTime: NSTimeInterval)
  convenience init(toAvoidAgents agents: [GKAgent], maxPredictionTime maxPredictionTime: NSTimeInterval)
  convenience init(toSeparateFromAgents agents: [GKAgent], maxDistance maxDistance: Float, maxAngle maxAngle: Float)
  convenience init(toAlignWithAgents agents: [GKAgent], maxDistance maxDistance: Float, maxAngle maxAngle: Float)
  convenience init(toCohereWithAgents agents: [GKAgent], maxDistance maxDistance: Float, maxAngle maxAngle: Float)
  convenience init(toReachTargetSpeed targetSpeed: Float)
  convenience init(toWander speed: Float)
  convenience init(toInterceptAgent target: GKAgent, maxPredictionTime maxPredictionTime: NSTimeInterval)
  convenience init(toFollowPath path: GKPath, maxPredictionTime maxPredictionTime: NSTimeInterval, forward forward: Bool)
  convenience init(toStayOnPath path: GKPath, maxPredictionTime maxPredictionTime: NSTimeInterval)
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
