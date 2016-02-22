
class NSURLCredentialStorage : NSObject {
  class func shared() -> NSURLCredentialStorage
  func credentials(for space: NSURLProtectionSpace) -> [String : NSURLCredential]?
  var allCredentials: [NSURLProtectionSpace : [String : NSURLCredential]] { get }
  func setCredential(credential: NSURLCredential, for space: NSURLProtectionSpace)
  func remove(credential: NSURLCredential, for space: NSURLProtectionSpace)
  @available(OSX 10.9, *)
  func remove(credential: NSURLCredential, for space: NSURLProtectionSpace, options: [String : AnyObject]? = [:])
  func defaultCredential(for space: NSURLProtectionSpace) -> NSURLCredential?
  func setDefaultCredential(credential: NSURLCredential, for space: NSURLProtectionSpace)
  init()
}
extension NSURLCredentialStorage {
  @available(OSX 10.10, *)
  func getCredentialsFor(protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: ([String : NSURLCredential]?) -> Void)
  @available(OSX 10.10, *)
  func setCredential(credential: NSURLCredential, for protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
  @available(OSX 10.10, *)
  func remove(credential: NSURLCredential, for protectionSpace: NSURLProtectionSpace, options: [String : AnyObject]? = [:], task: NSURLSessionTask)
  @available(OSX 10.10, *)
  func getDefaultCredential(for space: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: (NSURLCredential?) -> Void)
  @available(OSX 10.10, *)
  func setDefaultCredential(credential: NSURLCredential, for protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
}
let NSURLCredentialStorageChangedNotification: String
@available(OSX 10.9, *)
let NSURLCredentialStorageRemoveSynchronizableCredentials: String
