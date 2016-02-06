
@available(iOS 5.0, *)
class UIManagedDocument : UIDocument {
  class func persistentStoreName() -> String
  var persistentStoreOptions: [Object : AnyObject]?
  var modelConfiguration: String?
  func configurePersistentStoreCoordinatorFor(storeURL: URL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [Object : AnyObject]? = [:]) throws
  func persistentStoreTypeFor(fileType fileType: String) -> String
  func readAdditionalContentFrom(absoluteURL: URL) throws
  func additionalContentFor(absoluteURL: URL) throws -> AnyObject
  func writeAdditionalContent(content: AnyObject, to absoluteURL: URL, originalContentsURL absoluteOriginalContentsURL: URL?) throws
  init(fileURL url: URL)
  convenience init()
}
