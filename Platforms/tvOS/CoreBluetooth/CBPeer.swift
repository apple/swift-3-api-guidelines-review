
@available(tvOS 8.0, *)
class CBPeer : NSObject, NSCopying {
  @available(tvOS 7.0, *)
  var identifier: NSUUID { get }
  @available(tvOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
