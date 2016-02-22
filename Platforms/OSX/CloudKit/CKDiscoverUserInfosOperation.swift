
@available(OSX 10.10, *)
class CKDiscoverUserInfosOperation : CKOperation {
  init()
  convenience init(emailAddresses emailAddresses: [String]?, userRecordIDs userRecordIDs: [CKRecordID]?)
  var emailAddresses: [String]?
  var userRecordIDs: [CKRecordID]?
  var discoverUserInfosCompletionBlock: (([String : CKDiscoveredUserInfo]?, [CKRecordID : CKDiscoveredUserInfo]?, NSError?) -> Void)?
}
