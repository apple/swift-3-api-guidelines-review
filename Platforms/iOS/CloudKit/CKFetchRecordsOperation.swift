
@available(iOS 8.0, *)
class CKFetchRecordsOperation : CKDatabaseOperation {
  init()
  convenience init(recordIDs: [CKRecordID])
  class func fetchCurrentUserRecord() -> Self
  var recordIDs: [CKRecordID]?
  var desiredKeys: [String]?
  var perRecordProgressBlock: ((CKRecordID, Double) -> Void)?
  var perRecordCompletionBlock: ((CKRecord?, CKRecordID?, Error?) -> Void)?
  var fetchRecordsCompletionBlock: (([CKRecordID : CKRecord]?, Error?) -> Void)?
}
