
@available(iOS 5.0, *)
class UIManagedDocument : UIDocument {
  class func persistentStoreName() -> String
  var persistentStoreOptions: [NSObject : AnyObject]?
  var modelConfiguration: String?
  func configurePersistentStoreCoordinatorForURL(_ storeURL: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions storeOptions: [NSObject : AnyObject]?) throws
  func persistentStoreTypeForFileType(_ fileType: String) -> String
  func readAdditionalContentFromURL(_ absoluteURL: NSURL) throws
  func additionalContentForURL(_ absoluteURL: NSURL) throws -> AnyObject
  func writeAdditionalContent(_ content: AnyObject, toURL absoluteURL: NSURL, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
}
