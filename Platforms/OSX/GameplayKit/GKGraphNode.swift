
@available(OSX 10.11, *)
class GKGraphNode : NSObject {
  var connectedNodes: [GKGraphNode] { get }
  func addConnectionsToNodes(_ nodes: [GKGraphNode], bidirectional bidirectional: Bool)
  func removeConnectionsToNodes(_ nodes: [GKGraphNode], bidirectional bidirectional: Bool)
  func estimatedCostToNode(_ node: GKGraphNode) -> Float
  func costToNode(_ node: GKGraphNode) -> Float
  func findPathToNode(_ goalNode: GKGraphNode) -> [GKGraphNode]
  func findPathFromNode(_ startNode: GKGraphNode) -> [GKGraphNode]
}
@available(OSX 10.11, *)
class GKGraphNode2D : GKGraphNode {
  var position: vector_float2
  class func nodeWithPoint(_ point: vector_float2) -> Self
  init(point point: vector_float2)
}
@available(OSX 10.11, *)
class GKGridGraphNode : GKGraphNode {
  var gridPosition: vector_int2
  init(gridPosition gridPosition: vector_int2)
}
