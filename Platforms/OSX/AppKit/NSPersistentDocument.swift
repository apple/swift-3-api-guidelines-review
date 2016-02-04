
class NSPersistentDocument : NSDocument {
  var managedObjectContext: NSManagedObjectContext?
  var managedObjectModel: NSManagedObjectModel? { get }
  @available(OSX 10.5, *)
  func configurePersistentStoreCoordinatorForURL(url: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [String : AnyObject]?) throws
  func persistentStoreTypeForFileType(fileType: String) -> String
  func writeToURL(absoluteURL: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func readFromURL(absoluteURL: NSURL, ofType typeName: String) throws
  func revertToContentsOfURL(inAbsoluteURL: NSURL, ofType inTypeName: String) throws
  init()
  convenience init(type typeName: String) throws
  convenience init(contentsOfURL url: NSURL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, ofType typeName: String) throws
}
extension NSPersistentDocument {
}
