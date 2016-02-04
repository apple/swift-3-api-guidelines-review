
@available(tvOS 8.0, *)
class SK3DNode : SKNode {
  init(viewportSize: CGSize)
  init?(coder aDecoder: Coder)
  var viewportSize: CGSize
  var sceneTime: TimeInterval
  func hitTest(point: CGPoint, options: [String : AnyObject]? = [:]) -> [AnyObject]
  func projectPoint(point: vector_float3) -> vector_float3
  func unprojectPoint(point: vector_float3) -> vector_float3
  var isPlaying: Bool
  var loops: Bool
  var autoenablesDefaultLighting: Bool
  convenience init()
  convenience init?(fileNamed filename: String)
}
