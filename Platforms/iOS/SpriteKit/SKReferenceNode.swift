
@available(iOS 9.0, *)
class SKReferenceNode : SKNode {
  init(URL url: NSURL?)
  init(fileNamed fileName: String?)
  init?(coder aDecoder: NSCoder)
  convenience init(fileNamed fileName: String)
  convenience init(URL referenceURL: NSURL)
  func didLoadReferenceNode(node: SKNode?)
  func resolveReferenceNode()
  convenience init()
}
