
@available(iOS 8.0, *)
class CBPeer : NSObject, NSCopying {
  @available(iOS 7.0, *)
  var identifier: NSUUID { get }
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
