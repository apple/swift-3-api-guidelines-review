
@available(tvOS 8.0, *)
class CKFetchRecordsOperation : CKDatabaseOperation {
  init()
  convenience init(recordIDs: [CKRecordID])
  class func fetchCurrentUserRecordOperation() -> Self
  var recordIDs: [CKRecordID]?
  var desiredKeys: [String]?
  var perRecordProgressBlock: ((CKRecordID, Double) -> Void)?
  var perRecordCompletionBlock: ((CKRecord?, CKRecordID?, NSError?) -> Void)?
  var fetchRecordsCompletionBlock: (([CKRecordID : CKRecord]?, NSError?) -> Void)?
}
