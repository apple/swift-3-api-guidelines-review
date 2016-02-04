
@available(OSX 10.11, *)
class NSDataAsset : Object, Copying {
  convenience init?(name: String)
  init?(name: String, bundle: Bundle)
  var name: String { get }
  @NSCopying var data: Data { get }
  var typeIdentifier: String { get }
  @available(OSX 10.11, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
