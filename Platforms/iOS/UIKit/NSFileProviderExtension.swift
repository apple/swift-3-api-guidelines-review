
@available(iOS 8.0, *)
class NSFileProviderExtension : Object {
  class func writePlaceholder(at placeholderURL: URL, withMetadata metadata: [Object : AnyObject]) throws
  class func placeholderURL(forURL url: URL) -> URL
  func providerIdentifier() -> String
  func documentStorageURL() -> URL
  func urlForItem(withPersistentIdentifier identifier: String) -> URL?
  func persistentIdentifierForItem(at url: URL) -> String?
  func providePlaceholder(at url: URL, completionHandler: (Error?) -> Void)
  func startProvidingItem(at url: URL, completionHandler: (Error?) -> Void)
  func itemChanged(at url: URL)
  func stopProvidingItem(at url: URL)
  init()
}
