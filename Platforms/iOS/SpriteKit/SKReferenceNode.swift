
@available(iOS 9.0, *)
class SKReferenceNode : SKNode {
  init(URL url: NSURL?)
  init(fileNamed fileName: String?)
  convenience init(fileNamed fileName: String)
  convenience init(URL referenceURL: NSURL)
  func didLoadReferenceNode(_ node: SKNode?)
  func resolveReferenceNode()
}
