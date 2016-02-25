
class NSURLCredentialStorage : NSObject {
  class func sharedCredentialStorage() -> NSURLCredentialStorage
  func credentialsForProtectionSpace(_ space: NSURLProtectionSpace) -> [String : NSURLCredential]?
  var allCredentials: [NSURLProtectionSpace : [String : NSURLCredential]] { get }
  func setCredential(_ credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  func removeCredential(_ credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  @available(OSX 10.9, *)
  func removeCredential(_ credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace, options options: [String : AnyObject]?)
  func defaultCredentialForProtectionSpace(_ space: NSURLProtectionSpace) -> NSURLCredential?
  func setDefaultCredential(_ credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
}
extension NSURLCredentialStorage {
  @available(OSX 10.10, *)
  func getCredentialsForProtectionSpace(_ protectionSpace: NSURLProtectionSpace, task task: NSURLSessionTask, completionHandler completionHandler: ([String : NSURLCredential]?) -> Void)
  @available(OSX 10.10, *)
  func setCredential(_ credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task task: NSURLSessionTask)
  @available(OSX 10.10, *)
  func removeCredential(_ credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, options options: [String : AnyObject]?, task task: NSURLSessionTask)
  @available(OSX 10.10, *)
  func getDefaultCredentialForProtectionSpace(_ space: NSURLProtectionSpace, task task: NSURLSessionTask, completionHandler completionHandler: (NSURLCredential?) -> Void)
  @available(OSX 10.10, *)
  func setDefaultCredential(_ credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task task: NSURLSessionTask)
}
let NSURLCredentialStorageChangedNotification: String
@available(OSX 10.9, *)
let NSURLCredentialStorageRemoveSynchronizableCredentials: String
