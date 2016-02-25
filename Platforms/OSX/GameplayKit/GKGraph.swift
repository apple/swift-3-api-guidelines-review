
@available(OSX 10.11, *)
class GKGraph : NSObject {
  var nodes: [GKGraphNode]? { get }
  init(nodes nodes: [GKGraphNode])
  func connectNodeToLowestCostNode(_ node: GKGraphNode, bidirectional bidirectional: Bool)
  func removeNodes(_ nodes: [GKGraphNode])
  func addNodes(_ nodes: [GKGraphNode])
  func findPathFromNode(_ startNode: GKGraphNode, toNode endNode: GKGraphNode) -> [GKGraphNode]
}
@available(OSX 10.11, *)
class GKObstacleGraph : GKGraph {
  var obstacles: [GKPolygonObstacle] { get }
  var bufferRadius: Float { get }
  init(obstacles obstacles: [GKPolygonObstacle], bufferRadius bufferRadius: Float)
  func connectNodeUsingObstacles(_ node: GKGraphNode2D)
  func connectNodeUsingObstacles(_ node: GKGraphNode2D, ignoringObstacles obstaclesToIgnore: [GKPolygonObstacle])
  func connectNodeUsingObstacles(_ node: GKGraphNode2D, ignoringBufferRadiusOfObstacles obstaclesBufferRadiusToIgnore: [GKPolygonObstacle])
  func addObstacles(_ obstacles: [GKPolygonObstacle])
  func removeObstacles(_ obstacles: [GKPolygonObstacle])
  func removeAllObstacles()
  func nodesForObstacle(_ obstacle: GKPolygonObstacle) -> [GKGraphNode2D]
  func lockConnectionFromNode(_ startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D)
  func unlockConnectionFromNode(_ startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D)
  func isConnectionLockedFromNode(_ startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D) -> Bool
}
@available(OSX 10.11, *)
class GKGridGraph : GKGraph {
  var gridOrigin: vector_int2 { get }
  var gridWidth: Int { get }
  var gridHeight: Int { get }
  var diagonalsAllowed: Bool { get }
  init(fromGridStartingAt position: vector_int2, width width: Int32, height height: Int32, diagonalsAllowed diagonalsAllowed: Bool)
  func nodeAtGridPosition(_ position: vector_int2) -> GKGridGraphNode?
  func connectNodeToAdjacentNodes(_ node: GKGridGraphNode)
}
