
@available(tvOS 3.0, *)
class NSManagedObjectID : NSObject, NSCopying {
  var entity: NSEntityDescription { get }
  weak var persistentStore: @sil_weak NSPersistentStore? { get }
  var temporaryID: Bool { get }
  func URIRepresentation() -> NSURL
  init()
  @available(tvOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
