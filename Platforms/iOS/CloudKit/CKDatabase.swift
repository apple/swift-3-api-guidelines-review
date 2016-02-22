
@available(iOS 8.0, *)
class CKDatabase : NSObject {
  func add(operation: CKDatabaseOperation)
}
extension CKDatabase {
  func fetchRecord(recordID: CKRecordID, completionHandler: (CKRecord?, NSError?) -> Void)
  func save(record: CKRecord, completionHandler: (CKRecord?, NSError?) -> Void)
  func deleteRecord(recordID: CKRecordID, completionHandler: (CKRecordID?, NSError?) -> Void)
  func perform(query: CKQuery, inZoneWith zoneID: CKRecordZoneID?, completionHandler: ([CKRecord]?, NSError?) -> Void)
  func fetchAllRecordZones(completionHandler completionHandler: ([CKRecordZone]?, NSError?) -> Void)
  func fetchRecordZone(zoneID: CKRecordZoneID, completionHandler: (CKRecordZone?, NSError?) -> Void)
  func save(zone: CKRecordZone, completionHandler: (CKRecordZone?, NSError?) -> Void)
  func deleteRecordZone(zoneID: CKRecordZoneID, completionHandler: (CKRecordZoneID?, NSError?) -> Void)
  func fetchSubscription(id subscriptionID: String, completionHandler: (CKSubscription?, NSError?) -> Void)
  func fetchAllSubscriptions(completionHandler completionHandler: ([CKSubscription]?, NSError?) -> Void)
  func save(subscription: CKSubscription, completionHandler: (CKSubscription?, NSError?) -> Void)
  func deleteSubscription(id subscriptionID: String, completionHandler: (String?, NSError?) -> Void)
}
