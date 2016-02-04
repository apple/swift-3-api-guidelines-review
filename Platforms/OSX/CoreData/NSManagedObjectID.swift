
@available(OSX 10.4, *)
class NSManagedObjectID : NSObject, NSCopying {
  var entity: NSEntityDescription { get }
  weak var persistentStore: @sil_weak NSPersistentStore? { get }
  var temporaryID: Bool { get }
  func URIRepresentation() -> NSURL
  init()
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
