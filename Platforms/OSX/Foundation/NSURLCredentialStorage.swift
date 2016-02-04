
class URLCredentialStorage : Object {
  class func shared() -> URLCredentialStorage
  func credentialsFor(space: URLProtectionSpace) -> [String : URLCredential]?
  var allCredentials: [URLProtectionSpace : [String : URLCredential]] { get }
  func setCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  @available(OSX 10.9, *)
  func remove(credential: URLCredential, forProtectionSpace space: URLProtectionSpace, options: [String : AnyObject]? = [:])
  func defaultCredentialFor(space: URLProtectionSpace) -> URLCredential?
  func setDefaultCredential(credential: URLCredential, forProtectionSpace space: URLProtectionSpace)
  init()
}
extension URLCredentialStorage {
  @available(OSX 10.10, *)
  func getCredentialsFor(protectionSpace: URLProtectionSpace, task: URLSessionTask, completionHandler: ([String : URLCredential]?) -> Void)
  @available(OSX 10.10, *)
  func setCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
  @available(OSX 10.10, *)
  func remove(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, options: [String : AnyObject]? = [:], task: URLSessionTask)
  @available(OSX 10.10, *)
  func getDefaultCredentialFor(space: URLProtectionSpace, task: URLSessionTask, completionHandler: (URLCredential?) -> Void)
  @available(OSX 10.10, *)
  func setDefaultCredential(credential: URLCredential, forProtectionSpace protectionSpace: URLProtectionSpace, task: URLSessionTask)
}
let urlCredentialStorageChangedNotification: String
@available(OSX 10.9, *)
let urlCredentialStorageRemoveSynchronizableCredentials: String
