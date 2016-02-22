
@available(iOS 8.0, *)
class CKDiscoverAllContactsOperation : CKOperation {
  init()
  var discoverAllContactsCompletionBlock: (([CKDiscoveredUserInfo]?, NSError?) -> Void)?
}
