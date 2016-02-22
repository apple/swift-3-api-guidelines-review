
@available(tvOS 9.0, *)
class SKReferenceNode : SKNode {
  init(url: NSURL?)
  init(fileNamed fileName: String?)
  init?(coder aDecoder: NSCoder)
  convenience init(fileNamed fileName: String)
  convenience init(url referenceURL: NSURL)
  func didLoad(node: SKNode?)
  func resolve()
  convenience init()
}
