
@available(iOS 8.0, *)
class NSFileProviderExtension : NSObject {
  class func writePlaceholderAtURL(placeholderURL: NSURL, withMetadata metadata: [NSObject : AnyObject]) throws
  class func placeholderURLForURL(url: NSURL) -> NSURL
  func providerIdentifier() -> String
  func documentStorageURL() -> NSURL
  func URLForItemWithPersistentIdentifier(identifier: String) -> NSURL?
  func persistentIdentifierForItemAtURL(url: NSURL) -> String?
  func providePlaceholderAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  func startProvidingItemAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  func itemChangedAtURL(url: NSURL)
  func stopProvidingItemAtURL(url: NSURL)
  init()
}
