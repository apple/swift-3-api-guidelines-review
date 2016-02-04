
@available(iOS 9.0, *)
class GKGraphNode : Object {
  var connectedNodes: [GKGraphNode] { get }
  func addConnectionsTo(nodes: [GKGraphNode], bidirectional: Bool)
  func removeConnectionsTo(nodes: [GKGraphNode], bidirectional: Bool)
  func estimatedCostTo(node: GKGraphNode) -> Float
  func costTo(node: GKGraphNode) -> Float
  func findPathTo(goalNode: GKGraphNode) -> [GKGraphNode]
  func findPathFrom(startNode: GKGraphNode) -> [GKGraphNode]
  init()
}
@available(iOS 9.0, *)
class GKGraphNode2D : GKGraphNode {
  var position: vector_float2
  class func nodeWithPoint(point: vector_float2) -> Self
  init(point: vector_float2)
  convenience init()
}
@available(iOS 9.0, *)
class GKGridGraphNode : GKGraphNode {
  var gridPosition: vector_int2
  init(gridPosition: vector_int2)
  convenience init()
}
