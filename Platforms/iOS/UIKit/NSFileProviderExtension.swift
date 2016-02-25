
@available(iOS 8.0, *)
class NSFileProviderExtension : NSObject {
  class func writePlaceholderAtURL(_ placeholderURL: NSURL, withMetadata metadata: [NSObject : AnyObject]) throws
  class func placeholderURLForURL(_ url: NSURL) -> NSURL
  func providerIdentifier() -> String
  func documentStorageURL() -> NSURL
  func URLForItemWithPersistentIdentifier(_ identifier: String) -> NSURL?
  func persistentIdentifierForItemAtURL(_ url: NSURL) -> String?
  func providePlaceholderAtURL(_ url: NSURL, completionHandler completionHandler: (NSError?) -> Void)
  func startProvidingItemAtURL(_ url: NSURL, completionHandler completionHandler: (NSError?) -> Void)
  func itemChangedAtURL(_ url: NSURL)
  func stopProvidingItemAtURL(_ url: NSURL)
}
