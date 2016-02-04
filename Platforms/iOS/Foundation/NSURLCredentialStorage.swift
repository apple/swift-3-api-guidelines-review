
class URLCredentialStorage : Object {
  class func shared() -> URLCredentialStorage
  func credentialsFor(space: URLProtectionSpace) -> [String : URLCredential]?
  var allCredentials: [URLProtectionSpace : [String : URLCredential]] { get }
  func setCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  @available(iOS 7.0, *)
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace, options: [String : AnyObject]? = [:])
  func defaultCredentialFor(space: URLProtectionSpace) -> URLCredential?
  func setDefaultCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  init()
}
extension URLCredentialStorage {
  @available(iOS 8.0, *)
  func getCredentialsFor(protectionSpace: URLProtectionSpace, task: URLSessionTask, completionHandler: ([String : URLCredential]?) -> Void)
  @available(iOS 8.0, *)
  func setCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
  @available(iOS 8.0, *)
  func remove(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, options: [String : AnyObject]? = [:], task: URLSessionTask)
  @available(iOS 8.0, *)
  func getDefaultCredentialFor(space: URLProtectionSpace, task: URLSessionTask, completionHandler: (URLCredential?) -> Void)
  @available(iOS 8.0, *)
  func setDefaultCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
}
let urlCredentialStorageChangedNotification: String
@available(iOS 7.0, *)
let urlCredentialStorageRemoveSynchronizableCredentials: String
