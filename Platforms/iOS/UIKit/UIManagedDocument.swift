
@available(iOS 5.0, *)
class UIManagedDocument : UIDocument {
  class func persistentStoreName() -> String
  var persistentStoreOptions: [Object : AnyObject]?
  var modelConfiguration: String?
  func configurePersistentStoreCoordinator(for storeURL: URL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [Object : AnyObject]? = [:]) throws
  func persistentStoreType(forFileType fileType: String) -> String
  func readAdditionalContent(from absoluteURL: URL) throws
  func additionalContent(for absoluteURL: URL) throws -> AnyObject
  func writeAdditionalContent(content: AnyObject, to absoluteURL: URL, originalContentsURL absoluteOriginalContentsURL: URL?) throws
  init(fileURL url: URL)
  convenience init()
}
