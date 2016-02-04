
@available(iOS 8.0, *)
class PHObject : Object, Copying {
  var localIdentifier: String { get }
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class PHObjectPlaceholder : PHObject {
  init()
}
