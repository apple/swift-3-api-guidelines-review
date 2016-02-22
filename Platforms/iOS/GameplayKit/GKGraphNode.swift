
@available(iOS 9.0, *)
class GKGraphNode : NSObject {
  var connectedNodes: [GKGraphNode] { get }
  func addConnections(to nodes: [GKGraphNode], bidirectional: Bool)
  func removeConnections(to nodes: [GKGraphNode], bidirectional: Bool)
  func estimatedCost(to node: GKGraphNode) -> Float
  func cost(to node: GKGraphNode) -> Float
  func findPath(to goalNode: GKGraphNode) -> [GKGraphNode]
  func findPath(from startNode: GKGraphNode) -> [GKGraphNode]
  init()
}
@available(iOS 9.0, *)
class GKGraphNode2D : GKGraphNode {
  var position: vector_float2
  class func node(withPoint point: vector_float2) -> Self
  init(point: vector_float2)
  convenience init()
}
@available(iOS 9.0, *)
class GKGridGraphNode : GKGraphNode {
  var gridPosition: vector_int2
  init(gridPosition: vector_int2)
  convenience init()
}
