
class NSPersistentDocument : NSDocument {
  var managedObjectContext: NSManagedObjectContext?
  var managedObjectModel: NSManagedObjectModel? { get }
  @available(OSX 10.5, *)
  func configurePersistentStoreCoordinator(for url: URL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [String : AnyObject]? = [:]) throws
  func persistentStoreType(forFileType fileType: String) -> String
  func write(to absoluteURL: URL, ofType typeName: String, for saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: URL?) throws
  func read(from absoluteURL: URL, ofType typeName: String) throws
  func revert(toContentsOf inAbsoluteURL: URL, ofType inTypeName: String) throws
  init()
  convenience init(type typeName: String) throws
  convenience init(contentsOf url: URL, ofType typeName: String) throws
  convenience init(for urlOrNil: URL?, withContentsOf contentsURL: URL, ofType typeName: String) throws
}
extension NSPersistentDocument {
}
