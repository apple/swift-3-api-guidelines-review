
@available(OSX 10.11, *)
class NSDataAsset : NSObject, NSCopying {
  convenience init?(name: String)
  init?(name: String, bundle: NSBundle)
  var name: String { get }
  @NSCopying var data: NSData { get }
  var typeIdentifier: String { get }
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
