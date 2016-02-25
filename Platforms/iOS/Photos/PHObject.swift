
@available(iOS 8.0, *)
class PHObject : NSObject, NSCopying {
  var localIdentifier: String { get }
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class PHObjectPlaceholder : PHObject {
}
