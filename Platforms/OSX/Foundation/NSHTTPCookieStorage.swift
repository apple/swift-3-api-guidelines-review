
enum NSHTTPCookieAcceptPolicy : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Always
  case Never
  case OnlyFromMainDocumentDomain
}
class NSHTTPCookieStorage : NSObject {
  class func sharedHTTPCookieStorage() -> NSHTTPCookieStorage
  @available(OSX 10.11, *)
  class func sharedCookieStorageForGroupContainerIdentifier(_ identifier: String) -> NSHTTPCookieStorage
  var cookies: [NSHTTPCookie]? { get }
  func setCookie(_ cookie: NSHTTPCookie)
  func deleteCookie(_ cookie: NSHTTPCookie)
  @available(OSX 10.10, *)
  func removeCookiesSinceDate(_ date: NSDate)
  func cookiesForURL(_ URL: NSURL) -> [NSHTTPCookie]?
  func setCookies(_ cookies: [NSHTTPCookie], forURL URL: NSURL?, mainDocumentURL mainDocumentURL: NSURL?)
  var cookieAcceptPolicy: NSHTTPCookieAcceptPolicy
  @available(OSX 10.7, *)
  func sortedCookiesUsingDescriptors(_ sortOrder: [NSSortDescriptor]) -> [NSHTTPCookie]
}
extension NSHTTPCookieStorage {
  @available(OSX 10.10, *)
  func storeCookies(_ cookies: [NSHTTPCookie], forTask task: NSURLSessionTask)
  @available(OSX 10.10, *)
  func getCookiesForTask(_ task: NSURLSessionTask, completionHandler completionHandler: ([NSHTTPCookie]?) -> Void)
}
let NSHTTPCookieManagerAcceptPolicyChangedNotification: String
let NSHTTPCookieManagerCookiesChangedNotification: String
