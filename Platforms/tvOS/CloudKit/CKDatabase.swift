
@available(tvOS 8.0, *)
class CKDatabase : NSObject {
  func addOperation(_ operation: CKDatabaseOperation)
}
extension CKDatabase {
  func fetchRecordWithID(_ recordID: CKRecordID, completionHandler completionHandler: (CKRecord?, NSError?) -> Void)
  func saveRecord(_ record: CKRecord, completionHandler completionHandler: (CKRecord?, NSError?) -> Void)
  func deleteRecordWithID(_ recordID: CKRecordID, completionHandler completionHandler: (CKRecordID?, NSError?) -> Void)
  func performQuery(_ query: CKQuery, inZoneWithID zoneID: CKRecordZoneID?, completionHandler completionHandler: ([CKRecord]?, NSError?) -> Void)
  func fetchAllRecordZonesWithCompletionHandler(_ completionHandler: ([CKRecordZone]?, NSError?) -> Void)
  func fetchRecordZoneWithID(_ zoneID: CKRecordZoneID, completionHandler completionHandler: (CKRecordZone?, NSError?) -> Void)
  func saveRecordZone(_ zone: CKRecordZone, completionHandler completionHandler: (CKRecordZone?, NSError?) -> Void)
  func deleteRecordZoneWithID(_ zoneID: CKRecordZoneID, completionHandler completionHandler: (CKRecordZoneID?, NSError?) -> Void)
  func fetchSubscriptionWithID(_ subscriptionID: String, completionHandler completionHandler: (CKSubscription?, NSError?) -> Void)
  func fetchAllSubscriptionsWithCompletionHandler(_ completionHandler: ([CKSubscription]?, NSError?) -> Void)
  func saveSubscription(_ subscription: CKSubscription, completionHandler completionHandler: (CKSubscription?, NSError?) -> Void)
  func deleteSubscriptionWithID(_ subscriptionID: String, completionHandler completionHandler: (String?, NSError?) -> Void)
}
