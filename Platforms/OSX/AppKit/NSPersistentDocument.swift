
class NSPersistentDocument : NSDocument {
  var managedObjectContext: NSManagedObjectContext?
  var managedObjectModel: NSManagedObjectModel? { get }
  @available(OSX 10.5, *)
  func configurePersistentStoreCoordinatorForURL(_ url: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions storeOptions: [String : AnyObject]?) throws
  func persistentStoreTypeForFileType(_ fileType: String) -> String
}
extension NSPersistentDocument {
}
