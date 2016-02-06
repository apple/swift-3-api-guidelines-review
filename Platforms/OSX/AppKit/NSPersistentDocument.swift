
class NSPersistentDocument : NSDocument {
  var managedObjectContext: NSManagedObjectContext?
  var managedObjectModel: NSManagedObjectModel? { get }
  @available(OSX 10.5, *)
  func configurePersistentStoreCoordinatorFor(url: URL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [String : AnyObject]? = [:]) throws
  func persistentStoreTypeFor(fileType fileType: String) -> String
  func writeTo(absoluteURL: URL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: URL?) throws
  func readFrom(absoluteURL: URL, ofType typeName: String) throws
  func revertToContentsOf(inAbsoluteURL: URL, ofType inTypeName: String) throws
  init()
  convenience init(type typeName: String) throws
  convenience init(contentsOf url: URL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: URL?, withContentsOf contentsURL: URL, ofType typeName: String) throws
}
extension NSPersistentDocument {
}
