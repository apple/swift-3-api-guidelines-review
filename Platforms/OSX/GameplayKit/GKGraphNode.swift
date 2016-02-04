
@available(OSX 10.11, *)
class GKGraphNode : NSObject {
  var connectedNodes: [GKGraphNode] { get }
  func addConnectionsToNodes(nodes: [GKGraphNode], bidirectional: Bool)
  func removeConnectionsToNodes(nodes: [GKGraphNode], bidirectional: Bool)
  func estimatedCostToNode(node: GKGraphNode) -> Float
  func costToNode(node: GKGraphNode) -> Float
  func findPathToNode(goalNode: GKGraphNode) -> [GKGraphNode]
  func findPathFromNode(startNode: GKGraphNode) -> [GKGraphNode]
  init()
}
@available(OSX 10.11, *)
class GKGraphNode2D : GKGraphNode {
  var position: vector_float2
  class func nodeWithPoint(point: vector_float2) -> Self
  init(point: vector_float2)
  convenience init()
}
@available(OSX 10.11, *)
class GKGridGraphNode : GKGraphNode {
  var gridPosition: vector_int2
  init(gridPosition: vector_int2)
  convenience init()
}
