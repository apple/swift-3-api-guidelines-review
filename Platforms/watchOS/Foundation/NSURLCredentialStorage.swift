
class URLCredentialStorage : Object {
  class func shared() -> URLCredentialStorage
  func credentials(for space: URLProtectionSpace) -> [String : URLCredential]?
  var allCredentials: [URLProtectionSpace : [String : URLCredential]] { get }
  func setCredential(credential: URLCredential, for space: URLProtectionSpace)
  func remove(credential: URLCredential, for space: URLProtectionSpace)
  @available(watchOS 2.0, *)
  func remove(credential: URLCredential, for space: URLProtectionSpace, options: [String : AnyObject]? = [:])
  func defaultCredential(for space: URLProtectionSpace) -> URLCredential?
  func setDefaultCredential(credential: URLCredential, for space: URLProtectionSpace)
  init()
}
extension URLCredentialStorage {
  @available(watchOS 2.0, *)
  func getCredentialsFor(protectionSpace: URLProtectionSpace, task: URLSessionTask, completionHandler: ([String : URLCredential]?) -> Void)
  @available(watchOS 2.0, *)
  func setCredential(credential: URLCredential, for protectionSpace: URLProtectionSpace, task: URLSessionTask)
  @available(watchOS 2.0, *)
  func remove(credential: URLCredential, for protectionSpace: URLProtectionSpace, options: [String : AnyObject]? = [:], task: URLSessionTask)
  @available(watchOS 2.0, *)
  func getDefaultCredential(for space: URLProtectionSpace, task: URLSessionTask, completionHandler: (URLCredential?) -> Void)
  @available(watchOS 2.0, *)
  func setDefaultCredential(credential: URLCredential, for protectionSpace: URLProtectionSpace, task: URLSessionTask)
}
let urlCredentialStorageChangedNotification: String
@available(watchOS 2.0, *)
let urlCredentialStorageRemoveSynchronizableCredentials: String
