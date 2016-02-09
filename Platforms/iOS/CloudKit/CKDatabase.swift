
@available(iOS 8.0, *)
class CKDatabase : Object {
  func add(operation: CKDatabaseOperation)
}
extension CKDatabase {
  func fetchRecord(recordID: CKRecordID, completionHandler: (CKRecord?, Error?) -> Void)
  func save(record: CKRecord, completionHandler: (CKRecord?, Error?) -> Void)
  func deleteRecord(recordID: CKRecordID, completionHandler: (CKRecordID?, Error?) -> Void)
  func perform(query: CKQuery, inZoneWith zoneID: CKRecordZoneID?, completionHandler: ([CKRecord]?, Error?) -> Void)
  func fetchAllRecordZones(withCompletionHandler completionHandler: ([CKRecordZone]?, Error?) -> Void)
  func fetchRecordZone(withID zoneID: CKRecordZoneID, completionHandler: (CKRecordZone?, Error?) -> Void)
  func save(zone: CKRecordZone, completionHandler: (CKRecordZone?, Error?) -> Void)
  func deleteRecordZone(withID zoneID: CKRecordZoneID, completionHandler: (CKRecordZoneID?, Error?) -> Void)
  func fetchSubscription(withID subscriptionID: String, completionHandler: (CKSubscription?, Error?) -> Void)
  func fetchAllSubscriptions(withCompletionHandler completionHandler: ([CKSubscription]?, Error?) -> Void)
  func save(subscription: CKSubscription, completionHandler: (CKSubscription?, Error?) -> Void)
  func deleteSubscription(withID subscriptionID: String, completionHandler: (String?, Error?) -> Void)
}
