
@available(OSX 10.10, *)
class CKFetchRecordZonesOperation : CKDatabaseOperation {
  class func fetchAll() -> Self
  init()
  convenience init(recordZoneIDs zoneIDs: [CKRecordZoneID])
  var recordZoneIDs: [CKRecordZoneID]?
  var fetchRecordZonesCompletionBlock: (([CKRecordZoneID : CKRecordZone]?, Error?) -> Void)?
}
