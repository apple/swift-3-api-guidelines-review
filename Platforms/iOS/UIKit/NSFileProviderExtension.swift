
@available(iOS 8.0, *)
class NSFileProviderExtension : Object {
  class func writePlaceholderAt(placeholderURL: URL, withMetadata metadata: [Object : AnyObject]) throws
  class func placeholderURLFor(url: URL) -> URL
  func providerIdentifier() -> String
  func documentStorageURL() -> URL
  func urlForItemWithPersistentIdentifier(identifier: String) -> URL?
  func persistentIdentifierForItemAt(url: URL) -> String?
  func providePlaceholderAt(url: URL, completionHandler: (Error?) -> Void)
  func startProvidingItemAt(url: URL, completionHandler: (Error?) -> Void)
  func itemChangedAt(url: URL)
  func stopProvidingItemAt(url: URL)
  init()
}
