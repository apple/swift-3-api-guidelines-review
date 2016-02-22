
@available(iOS 8.0, *)
class CKModifyRecordZonesOperation : CKDatabaseOperation {
  init()
  convenience init(recordZonesToSave: [CKRecordZone]?, recordZoneIDsToDelete: [CKRecordZoneID]?)
  var recordZonesToSave: [CKRecordZone]?
  var recordZoneIDsToDelete: [CKRecordZoneID]?
  var modifyRecordZonesCompletionBlock: (([CKRecordZone]?, [CKRecordZoneID]?, NSError?) -> Void)?
}
