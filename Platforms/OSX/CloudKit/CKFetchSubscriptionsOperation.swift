
@available(OSX 10.10, *)
class CKFetchSubscriptionsOperation : CKDatabaseOperation {
  class func fetchAllSubscriptionsOperation() -> Self
  convenience init(subscriptionIDs subscriptionIDs: [String])
  var subscriptionIDs: [String]?
  var fetchSubscriptionCompletionBlock: (([String : CKSubscription]?, NSError?) -> Void)?
}
