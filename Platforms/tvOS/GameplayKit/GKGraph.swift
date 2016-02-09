
@available(tvOS 9.0, *)
class GKGraph : Object {
  var nodes: [GKGraphNode]? { get }
  init(nodes: [GKGraphNode])
  func connectNodeToLowestCostNode(node: GKGraphNode, bidirectional: Bool)
  func removeNodes(nodes: [GKGraphNode])
  func addNodes(nodes: [GKGraphNode])
  func findPath(from startNode: GKGraphNode, to endNode: GKGraphNode) -> [GKGraphNode]
  init()
}
@available(tvOS 9.0, *)
class GKObstacleGraph : GKGraph {
  var obstacles: [GKPolygonObstacle] { get }
  var bufferRadius: Float { get }
  init(obstacles: [GKPolygonObstacle], bufferRadius: Float)
  func connectNodeUsing(obstacles node: GKGraphNode2D)
  func connectNodeUsing(obstacles node: GKGraphNode2D, ignoring obstaclesToIgnore: [GKPolygonObstacle])
  func connectNode(usingObstacles node: GKGraphNode2D, ignoringBufferRadiusOf obstaclesBufferRadiusToIgnore: [GKPolygonObstacle])
  func addObstacles(obstacles: [GKPolygonObstacle])
  func removeObstacles(obstacles: [GKPolygonObstacle])
  func removeAllObstacles()
  func nodesFor(obstacle: GKPolygonObstacle) -> [GKGraphNode2D]
  func lockConnection(from startNode: GKGraphNode2D, to endNode: GKGraphNode2D)
  func unlockConnection(from startNode: GKGraphNode2D, to endNode: GKGraphNode2D)
  func isConnectionLocked(from startNode: GKGraphNode2D, to endNode: GKGraphNode2D) -> Bool
  init(nodes: [GKGraphNode])
  init()
}
@available(tvOS 9.0, *)
class GKGridGraph : GKGraph {
  var gridOrigin: vector_int2 { get }
  var gridWidth: Int { get }
  var gridHeight: Int { get }
  var diagonalsAllowed: Bool { get }
  init(fromGridStartingAt position: vector_int2, width: Int32, height: Int32, diagonalsAllowed: Bool)
  func nodeAt(gridPosition position: vector_int2) -> GKGridGraphNode?
  func connectNodeTo(adjacentNodes node: GKGridGraphNode)
  init(nodes: [GKGraphNode])
  init()
}
