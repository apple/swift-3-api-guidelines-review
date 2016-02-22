
@available(OSX 10.11, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case onDemand
}
@available(OSX 10.11, *)
class SCNReferenceNode : SCNNode {
  init?(url referenceURL: NSURL)
  init?(coder aDecoder: NSCoder)
  @NSCopying var referenceURL: NSURL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var isLoaded: Bool { get }
  convenience init()
  @available(OSX 10.11, *)
  convenience init(mdlObject mdlObject: MDLObject)
}
