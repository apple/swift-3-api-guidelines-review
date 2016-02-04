
@available(tvOS 8.0, *)
class CKDiscoverUserInfosOperation : CKOperation {
  init()
  convenience init(emailAddresses: [String]?, userRecordIDs: [CKRecordID]?)
  var emailAddresses: [String]?
  var userRecordIDs: [CKRecordID]?
  var discoverUserInfosCompletionBlock: (([String : CKDiscoveredUserInfo]?, [CKRecordID : CKDiscoveredUserInfo]?, NSError?) -> Void)?
}
