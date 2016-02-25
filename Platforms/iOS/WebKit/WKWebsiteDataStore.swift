
@available(iOS 9.0, *)
class WKWebsiteDataStore : NSObject {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistentDataStore() -> WKWebsiteDataStore
  var persistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecordsOfTypes(_ dataTypes: Set<String>, completionHandler completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeDataOfTypes(_ dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler completionHandler: () -> Void)
  func removeDataOfTypes(_ websiteDataTypes: Set<String>, modifiedSince date: NSDate, completionHandler completionHandler: () -> Void)
}
