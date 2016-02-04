
@available(OSX 10.11, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case OnDemand
}
@available(OSX 10.11, *)
class SCNReferenceNode : SCNNode {
  init?(URL referenceURL: NSURL)
  init?(coder aDecoder: NSCoder)
  @NSCopying var referenceURL: NSURL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var loaded: Bool { get }
  convenience init()
  @available(OSX 10.11, *)
  convenience init(MDLObject mdlObject: MDLObject)
}
