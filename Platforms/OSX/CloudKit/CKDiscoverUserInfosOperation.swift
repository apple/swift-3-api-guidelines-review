
@available(OSX 10.10, *)
class CKDiscoverUserInfosOperation : CKOperation {
  init()
  convenience init(emailAddresses: [String]?, userRecordIDs: [CKRecordID]?)
  var emailAddresses: [String]?
  var userRecordIDs: [CKRecordID]?
  var discoverUserInfosCompletionBlock: (([String : CKDiscoveredUserInfo]?, [CKRecordID : CKDiscoveredUserInfo]?, Error?) -> Void)?
}
