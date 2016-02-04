
@available(iOS 9.0, *)
class GKPath : Object {
  var radius: Float
  var isCyclical: Bool
  var numPoints: Int { get }
  init(points: UnsafeMutablePointer<vector_float2>, count: Int, radius: Float, cyclical: Bool)
  convenience init(graphNodes: [GKGraphNode2D], radius: Float)
  func pointAt(index: Int) -> vector_float2
  convenience init()
}
