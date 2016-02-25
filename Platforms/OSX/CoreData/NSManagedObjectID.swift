
@available(OSX 10.4, *)
class NSManagedObjectID : NSObject, NSCopying {
  var entity: NSEntityDescription { get }
  weak var persistentStore: @sil_weak NSPersistentStore? { get }
  var isTemporaryID: Bool { get }
  func uriRepresentation() -> NSURL
  @available(OSX 10.4, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
