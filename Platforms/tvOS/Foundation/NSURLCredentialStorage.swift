
class URLCredentialStorage : Object {
  class func shared() -> URLCredentialStorage
  func credentials(forProtectionSpace space: URLProtectionSpace) -> [String : URLCredential]?
  var allCredentials: [URLProtectionSpace : [String : URLCredential]] { get }
  func setCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  @available(tvOS 7.0, *)
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace, options: [String : AnyObject]? = [:])
  func defaultCredential(forProtectionSpace space: URLProtectionSpace) -> URLCredential?
  func setDefaultCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  init()
}
extension URLCredentialStorage {
  @available(tvOS 8.0, *)
  func getCredentialsFor(protectionSpace: URLProtectionSpace, task: URLSessionTask, completionHandler: ([String : URLCredential]?) -> Void)
  @available(tvOS 8.0, *)
  func setCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
  @available(tvOS 8.0, *)
  func remove(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, options: [String : AnyObject]? = [:], task: URLSessionTask)
  @available(tvOS 8.0, *)
  func getDefaultCredential(forProtectionSpace space: URLProtectionSpace, task: URLSessionTask, completionHandler: (URLCredential?) -> Void)
  @available(tvOS 8.0, *)
  func setDefaultCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
}
let urlCredentialStorageChangedNotification: String
@available(tvOS 7.0, *)
let urlCredentialStorageRemoveSynchronizableCredentials: String
