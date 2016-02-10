
@available(tvOS 9.0, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case onDemand
}
@available(tvOS 9.0, *)
class SCNReferenceNode : SCNNode {
  init?(url referenceURL: URL)
  init?(coder aDecoder: Coder)
  @NSCopying var referenceURL: URL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var isLoaded: Bool { get }
  convenience init()
  @available(tvOS 9.0, *)
  convenience init(mdlObject: MDLObject)
}
