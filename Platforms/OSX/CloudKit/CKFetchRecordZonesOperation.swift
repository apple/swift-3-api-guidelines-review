
@available(OSX 10.10, *)
class CKFetchRecordZonesOperation : CKDatabaseOperation {
  class func fetchAllRecordZonesOperation() -> Self
  init()
  convenience init(recordZoneIDs zoneIDs: [CKRecordZoneID])
  var recordZoneIDs: [CKRecordZoneID]?
  var fetchRecordZonesCompletionBlock: (([CKRecordZoneID : CKRecordZone]?, NSError?) -> Void)?
}
