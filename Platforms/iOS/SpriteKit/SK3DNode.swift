
@available(iOS 8.0, *)
class SK3DNode : SKNode {
  init(viewportSize viewportSize: CGSize)
  var viewportSize: CGSize
  var sceneTime: NSTimeInterval
  func hitTest(_ point: CGPoint, options options: [String : AnyObject]? = [:]) -> [AnyObject]
  func projectPoint(_ point: vector_float3) -> vector_float3
  func unprojectPoint(_ point: vector_float3) -> vector_float3
  var isPlaying: Bool
  var loops: Bool
  var autoenablesDefaultLighting: Bool
}
