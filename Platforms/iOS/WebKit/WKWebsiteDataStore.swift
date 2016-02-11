
@available(iOS 9.0, *)
class WKWebsiteDataStore : Object {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistent() -> WKWebsiteDataStore
  var isPersistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecordsOf(types dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeDataOf(types dataTypes: Set<String>, for dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)
  func removeDataOf(types websiteDataTypes: Set<String>, modifiedSince date: Date, completionHandler: () -> Void)
}
