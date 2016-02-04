
@available(tvOS 9.0, *)
class GKGoal : NSObject, NSCopying {
  convenience init(toSeekAgent agent: GKAgent)
  convenience init(toFleeAgent agent: GKAgent)
  convenience init(toAvoidObstacles obstacles: [GKObstacle], maxPredictionTime: NSTimeInterval)
  convenience init(toAvoidAgents agents: [GKAgent], maxPredictionTime: NSTimeInterval)
  convenience init(toSeparateFromAgents agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toAlignWithAgents agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toCohereWithAgents agents: [GKAgent], maxDistance: Float, maxAngle: Float)
  convenience init(toReachTargetSpeed targetSpeed: Float)
  convenience init(toWander speed: Float)
  convenience init(toInterceptAgent target: GKAgent, maxPredictionTime: NSTimeInterval)
  convenience init(toFollowPath path: GKPath, maxPredictionTime: NSTimeInterval, forward: Bool)
  convenience init(toStayOnPath path: GKPath, maxPredictionTime: NSTimeInterval)
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
