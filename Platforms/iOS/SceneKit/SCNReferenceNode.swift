
@available(iOS 9.0, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case OnDemand
}
@available(iOS 9.0, *)
class SCNReferenceNode : SCNNode {
  init?(url referenceURL: URL)
  init?(coder aDecoder: Coder)
  @NSCopying var referenceURL: URL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var isLoaded: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  convenience init(mdlObject: MDLObject)
}
