
@available(OSX 10.11, *)
class SKReferenceNode : SKNode {
  init(url: URL?)
  init(fileNamed fileName: String?)
  init?(coder aDecoder: Coder)
  convenience init(fileNamed fileName: String)
  convenience init(url referenceURL: URL)
  func didLoad(node: SKNode?)
  func resolve()
  convenience init()
}
