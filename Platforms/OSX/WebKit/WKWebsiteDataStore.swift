
@available(OSX 10.11, *)
class WKWebsiteDataStore : Object {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistent() -> WKWebsiteDataStore
  var isPersistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecordsOfTypes(dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeDataOfTypes(dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)
  func removeDataOfTypes(websiteDataTypes: Set<String>, modifiedSince date: Date, completionHandler: () -> Void)
}
