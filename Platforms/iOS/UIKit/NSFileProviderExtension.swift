
@available(iOS 8.0, *)
class NSFileProviderExtension : NSObject {
  class func writePlaceholder(at placeholderURL: NSURL, withMetadata metadata: [NSObject : AnyObject]) throws
  class func placeholderURL(for url: NSURL) -> NSURL
  func providerIdentifier() -> String
  func documentStorageURL() -> NSURL
  func urlForItem(withPersistentIdentifier identifier: String) -> NSURL?
  func persistentIdentifierForItem(at url: NSURL) -> String?
  func providePlaceholder(at url: NSURL, completionHandler completionHandler: (NSError?) -> Void)
  func startProvidingItem(at url: NSURL, completionHandler completionHandler: (NSError?) -> Void)
  func itemChanged(at url: NSURL)
  func stopProvidingItem(at url: NSURL)
}
