
@available(iOS 8.0, *)
class PHObject : NSObject, NSCopying {
  var localIdentifier: String { get }
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class PHObjectPlaceholder : PHObject {
}
