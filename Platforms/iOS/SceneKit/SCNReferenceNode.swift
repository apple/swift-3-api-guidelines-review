
@available(iOS 9.0, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case OnDemand
}
@available(iOS 9.0, *)
class SCNReferenceNode : SCNNode {
  init?(URL referenceURL: NSURL)
  @NSCopying var referenceURL: NSURL
  var loadingPolicy: SCNReferenceLoadingPolicy
  func load()
  func unload()
  var loaded: Bool { get }
}
