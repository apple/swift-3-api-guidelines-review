
@available(OSX 10.11, *)
class SKCameraNode : SKNode {
  func contains(node: SKNode) -> Bool
  func containedNodeSet() -> Set<SKNode>
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
