
class NSURLCredentialStorage : NSObject {
  class func shared() -> NSURLCredentialStorage
  func credentials(for space: NSURLProtectionSpace) -> [String : NSURLCredential]?
  var allCredentials: [NSURLProtectionSpace : [String : NSURLCredential]] { get }
  func setCredential(credential: NSURLCredential, for space: NSURLProtectionSpace)
  func remove(credential: NSURLCredential, for space: NSURLProtectionSpace)
  @available(iOS 7.0, *)
  func remove(credential: NSURLCredential, for space: NSURLProtectionSpace, options: [String : AnyObject]? = [:])
  func defaultCredential(for space: NSURLProtectionSpace) -> NSURLCredential?
  func setDefaultCredential(credential: NSURLCredential, for space: NSURLProtectionSpace)
  init()
}
extension NSURLCredentialStorage {
  @available(iOS 8.0, *)
  func getCredentialsFor(protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: ([String : NSURLCredential]?) -> Void)
  @available(iOS 8.0, *)
  func setCredential(credential: NSURLCredential, for protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func remove(credential: NSURLCredential, for protectionSpace: NSURLProtectionSpace, options: [String : AnyObject]? = [:], task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func getDefaultCredential(for space: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: (NSURLCredential?) -> Void)
  @available(iOS 8.0, *)
  func setDefaultCredential(credential: NSURLCredential, for protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
}
let NSURLCredentialStorageChangedNotification: String
@available(iOS 7.0, *)
let NSURLCredentialStorageRemoveSynchronizableCredentials: String
