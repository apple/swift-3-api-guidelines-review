
@available(tvOS 8.0, *)
class CKDatabase : NSObject {
  func addOperation(operation: CKDatabaseOperation)
}
extension CKDatabase {
  func fetchRecordWithID(recordID: CKRecordID, completionHandler: (CKRecord?, NSError?) -> Void)
  func saveRecord(record: CKRecord, completionHandler: (CKRecord?, NSError?) -> Void)
  func deleteRecordWithID(recordID: CKRecordID, completionHandler: (CKRecordID?, NSError?) -> Void)
  func performQuery(query: CKQuery, inZoneWithID zoneID: CKRecordZoneID?, completionHandler: ([CKRecord]?, NSError?) -> Void)
  func fetchAllRecordZonesWithCompletionHandler(completionHandler: ([CKRecordZone]?, NSError?) -> Void)
  func fetchRecordZoneWithID(zoneID: CKRecordZoneID, completionHandler: (CKRecordZone?, NSError?) -> Void)
  func saveRecordZone(zone: CKRecordZone, completionHandler: (CKRecordZone?, NSError?) -> Void)
  func deleteRecordZoneWithID(zoneID: CKRecordZoneID, completionHandler: (CKRecordZoneID?, NSError?) -> Void)
  func fetchSubscriptionWithID(subscriptionID: String, completionHandler: (CKSubscription?, NSError?) -> Void)
  func fetchAllSubscriptionsWithCompletionHandler(completionHandler: ([CKSubscription]?, NSError?) -> Void)
  func saveSubscription(subscription: CKSubscription, completionHandler: (CKSubscription?, NSError?) -> Void)
  func deleteSubscriptionWithID(subscriptionID: String, completionHandler: (String?, NSError?) -> Void)
}
