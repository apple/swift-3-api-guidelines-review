
@available(iOS 9.0, *)
class WKWebsiteDataStore : NSObject {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistentDataStore() -> WKWebsiteDataStore
  var persistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecordsOfTypes(dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeDataOfTypes(dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)
  func removeDataOfTypes(websiteDataTypes: Set<String>, modifiedSince date: NSDate, completionHandler: () -> Void)
}
