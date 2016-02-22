
class NSPersistentDocument : NSDocument {
  var managedObjectContext: NSManagedObjectContext?
  var managedObjectModel: NSManagedObjectModel? { get }
  @available(OSX 10.5, *)
  func configurePersistentStoreCoordinator(for url: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [String : AnyObject]? = [:]) throws
  func persistentStoreType(forFileType fileType: String) -> String
  func write(to absoluteURL: NSURL, ofType typeName: String, for saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func read(from absoluteURL: NSURL, ofType typeName: String) throws
  func revert(toContentsOf inAbsoluteURL: NSURL, ofType inTypeName: String) throws
  init()
  convenience init(type typeName: String) throws
  convenience init(contentsOf url: NSURL, ofType typeName: String) throws
  convenience init(for urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, ofType typeName: String) throws
}
extension NSPersistentDocument {
}
