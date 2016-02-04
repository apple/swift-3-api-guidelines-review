
@available(iOS 8.0, *)
class PHObject : NSObject, NSCopying {
  var localIdentifier: String { get }
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class PHObjectPlaceholder : PHObject {
  init()
}
