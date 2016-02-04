
@available(tvOS 9.0, *)
class GKObstacle : Object {
  init()
}
@available(tvOS 9.0, *)
class GKCircleObstacle : GKObstacle {
  var radius: Float
  var position: vector_float2
  init(radius: Float)
  convenience init()
}
@available(tvOS 9.0, *)
class GKPolygonObstacle : GKObstacle {
  var vertexCount: Int { get }
  init(points: UnsafeMutablePointer<vector_float2>, count numPoints: Int)
  func vertexAt(index: Int) -> vector_float2
  convenience init()
}
