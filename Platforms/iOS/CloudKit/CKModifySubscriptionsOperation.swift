
@available(iOS 8.0, *)
class CKModifySubscriptionsOperation : CKDatabaseOperation {
  init(subscriptionsToSave: [CKSubscription]?, subscriptionIDsToDelete: [String]?)
  var subscriptionsToSave: [CKSubscription]?
  var subscriptionIDsToDelete: [String]?
  var modifySubscriptionsCompletionBlock: (([CKSubscription]?, [String]?, Error?) -> Void)?
  convenience init()
}
