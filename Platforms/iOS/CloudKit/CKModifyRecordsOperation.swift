
@available(iOS 8.0, *)
enum CKRecordSavePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case IfServerRecordUnchanged
  case ChangedKeys
  case AllKeys
}
@available(iOS 8.0, *)
class CKModifyRecordsOperation : CKDatabaseOperation {
  init()
  convenience init(recordsToSave records: [CKRecord]?, recordIDsToDelete recordIDs: [CKRecordID]?)
  var recordsToSave: [CKRecord]?
  var recordIDsToDelete: [CKRecordID]?
  var savePolicy: CKRecordSavePolicy
  @NSCopying var clientChangeTokenData: NSData?
  var atomic: Bool
  var perRecordProgressBlock: ((CKRecord, Double) -> Void)?
  var perRecordCompletionBlock: ((CKRecord?, NSError?) -> Void)?
  var modifyRecordsCompletionBlock: (([CKRecord]?, [CKRecordID]?, NSError?) -> Void)?
}
