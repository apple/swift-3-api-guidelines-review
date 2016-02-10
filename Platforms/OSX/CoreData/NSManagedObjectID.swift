
@available(OSX 10.4, *)
class NSManagedObjectID : Object, Copying {
  var entity: NSEntityDescription { get }
  weak var persistentStore: @sil_weak NSPersistentStore? { get }
  var isTemporaryID: Bool { get }
  func uriRepresentation() -> URL
  init()
  @available(OSX 10.4, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
