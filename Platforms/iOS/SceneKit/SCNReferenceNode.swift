
@available(iOS 9.0, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case onDemand
}
@available(iOS 9.0, *)
class SCNReferenceNode : SCNNode {
  init?(url referenceURL: NSURL)
  init?(coder aDecoder: NSCoder)
  @NSCopying var referenceURL: NSURL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var isLoaded: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  convenience init(mdlObject: MDLObject)
}
