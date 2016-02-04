
@available(tvOS 8.0, *)
class CKDatabase : Object {
  func add(operation: CKDatabaseOperation)
}
extension CKDatabase {
  func fetchRecordWith(recordID: CKRecordID, completionHandler: (CKRecord?, Error?) -> Void)
  func save(record: CKRecord, completionHandler: (CKRecord?, Error?) -> Void)
  func deleteRecordWith(recordID: CKRecordID, completionHandler: (CKRecordID?, Error?) -> Void)
  func perform(query: CKQuery, inZoneWith zoneID: CKRecordZoneID?, completionHandler: ([CKRecord]?, Error?) -> Void)
  func fetchAllRecordZonesWithCompletionHandler(completionHandler: ([CKRecordZone]?, Error?) -> Void)
  func fetchRecordZoneWith(zoneID: CKRecordZoneID, completionHandler: (CKRecordZone?, Error?) -> Void)
  func save(zone: CKRecordZone, completionHandler: (CKRecordZone?, Error?) -> Void)
  func deleteRecordZoneWith(zoneID: CKRecordZoneID, completionHandler: (CKRecordZoneID?, Error?) -> Void)
  func fetchSubscriptionWithID(subscriptionID: String, completionHandler: (CKSubscription?, Error?) -> Void)
  func fetchAllSubscriptionsWithCompletionHandler(completionHandler: ([CKSubscription]?, Error?) -> Void)
  func save(subscription: CKSubscription, completionHandler: (CKSubscription?, Error?) -> Void)
  func deleteSubscriptionWithID(subscriptionID: String, completionHandler: (String?, Error?) -> Void)
}
