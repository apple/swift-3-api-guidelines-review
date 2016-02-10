
@available(tvOS 9.0, *)
class NSDataAsset : Object, Copying {
  convenience init?(name: String)
  init?(name: String, bundle: Bundle)
  var name: String { get }
  @NSCopying var data: Data { get }
  var typeIdentifier: String { get }
  @available(tvOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
