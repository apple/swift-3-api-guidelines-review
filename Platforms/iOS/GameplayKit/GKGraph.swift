
@available(iOS 9.0, *)
class GKGraph : NSObject {
  var nodes: [GKGraphNode]? { get }
  init(nodes: [GKGraphNode])
  func connectNodeToLowestCostNode(node: GKGraphNode, bidirectional: Bool)
  func removeNodes(nodes: [GKGraphNode])
  func addNodes(nodes: [GKGraphNode])
  func findPathFromNode(startNode: GKGraphNode, toNode endNode: GKGraphNode) -> [GKGraphNode]
  init()
}
@available(iOS 9.0, *)
class GKObstacleGraph : GKGraph {
  var obstacles: [GKPolygonObstacle] { get }
  var bufferRadius: Float { get }
  init(obstacles: [GKPolygonObstacle], bufferRadius: Float)
  func connectNodeUsingObstacles(node: GKGraphNode2D)
  func connectNodeUsingObstacles(node: GKGraphNode2D, ignoringObstacles obstaclesToIgnore: [GKPolygonObstacle])
  func connectNodeUsingObstacles(node: GKGraphNode2D, ignoringBufferRadiusOfObstacles obstaclesBufferRadiusToIgnore: [GKPolygonObstacle])
  func addObstacles(obstacles: [GKPolygonObstacle])
  func removeObstacles(obstacles: [GKPolygonObstacle])
  func removeAllObstacles()
  func nodesForObstacle(obstacle: GKPolygonObstacle) -> [GKGraphNode2D]
  func lockConnectionFromNode(startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D)
  func unlockConnectionFromNode(startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D)
  func isConnectionLockedFromNode(startNode: GKGraphNode2D, toNode endNode: GKGraphNode2D) -> Bool
  init(nodes: [GKGraphNode])
  init()
}
@available(iOS 9.0, *)
class GKGridGraph : GKGraph {
  var gridOrigin: vector_int2 { get }
  var gridWidth: Int { get }
  var gridHeight: Int { get }
  var diagonalsAllowed: Bool { get }
  init(fromGridStartingAt position: vector_int2, width: Int32, height: Int32, diagonalsAllowed: Bool)
  func nodeAtGridPosition(position: vector_int2) -> GKGridGraphNode?
  func connectNodeToAdjacentNodes(node: GKGridGraphNode)
  init(nodes: [GKGraphNode])
  init()
}
