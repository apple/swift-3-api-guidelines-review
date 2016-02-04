
@available(iOS 5.0, *)
class UIManagedDocument : UIDocument {
  class func persistentStoreName() -> String
  var persistentStoreOptions: [NSObject : AnyObject]?
  var modelConfiguration: String?
  func configurePersistentStoreCoordinatorForURL(storeURL: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [NSObject : AnyObject]?) throws
  func persistentStoreTypeForFileType(fileType: String) -> String
  func readAdditionalContentFromURL(absoluteURL: NSURL) throws
  func additionalContentForURL(absoluteURL: NSURL) throws -> AnyObject
  func writeAdditionalContent(content: AnyObject, toURL absoluteURL: NSURL, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  init(fileURL url: NSURL)
  convenience init()
}
