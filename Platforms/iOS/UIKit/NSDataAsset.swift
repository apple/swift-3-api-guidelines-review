
@available(iOS 9.0, *)
class NSDataAsset : NSObject, NSCopying {
  convenience init?(name: String)
  init?(name: String, bundle: NSBundle)
  var name: String { get }
  @NSCopying var data: NSData { get }
  var typeIdentifier: String { get }
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
