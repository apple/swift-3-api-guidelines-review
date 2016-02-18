
@available(iOS 9.0, *)
class NSDataAsset : Object, Copying {
  convenience init?(name: String)
  init?(name: String, bundle: Bundle)
  var name: String { get }
  @NSCopying var data: Data { get }
  var typeIdentifier: String { get }
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
