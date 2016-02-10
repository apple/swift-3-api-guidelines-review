
@available(iOS 8.0, *)
class CBPeer : Object, Copying {
  @available(iOS 7.0, *)
  var identifier: UUID { get }
  @available(iOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
