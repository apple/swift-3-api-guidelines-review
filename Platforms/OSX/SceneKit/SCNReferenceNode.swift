
@available(OSX 10.11, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case OnDemand
}
@available(OSX 10.11, *)
class SCNReferenceNode : SCNNode {
  init?(url referenceURL: URL)
  init?(coder aDecoder: Coder)
  @NSCopying var referenceURL: URL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var isLoaded: Bool { get }
  convenience init()
  @available(OSX 10.11, *)
  convenience init(mdlObject: MDLObject)
}
