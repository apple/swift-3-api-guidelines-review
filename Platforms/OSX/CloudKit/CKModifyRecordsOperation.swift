
@available(OSX 10.10, *)
enum CKRecordSavePolicy : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case IfServerRecordUnchanged
  case ChangedKeys
  case AllKeys
}
@available(OSX 10.10, *)
class CKModifyRecordsOperation : CKDatabaseOperation {
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
