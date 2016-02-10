
@available(iOS 3.0, *)
class NSManagedObjectID : Object, Copying {
  var entity: NSEntityDescription { get }
  weak var persistentStore: @sil_weak NSPersistentStore? { get }
  var isTemporaryID: Bool { get }
  func uriRepresentation() -> URL
  init()
  @available(iOS 3.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
