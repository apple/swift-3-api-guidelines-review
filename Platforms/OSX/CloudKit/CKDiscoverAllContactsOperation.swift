
@available(OSX 10.10, *)
class CKDiscoverAllContactsOperation : CKOperation {
  init()
  var discoverAllContactsCompletionBlock: (([CKDiscoveredUserInfo]?, Error?) -> Void)?
}
