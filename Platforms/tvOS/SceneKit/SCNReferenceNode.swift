
@available(tvOS 9.0, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case OnDemand
}
@available(tvOS 9.0, *)
class SCNReferenceNode : SCNNode {
  init?(URL referenceURL: NSURL)
  init?(coder aDecoder: NSCoder)
  @NSCopying var referenceURL: NSURL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var loaded: Bool { get }
  convenience init()
  @available(tvOS 9.0, *)
  convenience init(MDLObject mdlObject: MDLObject)
}
