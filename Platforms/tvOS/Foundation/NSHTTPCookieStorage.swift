
enum NSHTTPCookieAcceptPolicy : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Always
  case Never
  case OnlyFromMainDocumentDomain
}
class NSHTTPCookieStorage : NSObject {
  class func sharedHTTPCookieStorage() -> NSHTTPCookieStorage
  @available(tvOS 9.0, *)
  class func sharedCookieStorageForGroupContainerIdentifier(_ identifier: String) -> NSHTTPCookieStorage
  var cookies: [NSHTTPCookie]? { get }
  func setCookie(_ cookie: NSHTTPCookie)
  func deleteCookie(_ cookie: NSHTTPCookie)
  @available(tvOS 8.0, *)
  func removeCookiesSinceDate(_ date: NSDate)
  func cookiesForURL(_ URL: NSURL) -> [NSHTTPCookie]?
  func setCookies(_ cookies: [NSHTTPCookie], forURL URL: NSURL?, mainDocumentURL mainDocumentURL: NSURL?)
  var cookieAcceptPolicy: NSHTTPCookieAcceptPolicy
  @available(tvOS 5.0, *)
  func sortedCookiesUsingDescriptors(_ sortOrder: [NSSortDescriptor]) -> [NSHTTPCookie]
}
extension NSHTTPCookieStorage {
  @available(tvOS 8.0, *)
  func storeCookies(_ cookies: [NSHTTPCookie], forTask task: NSURLSessionTask)
  @available(tvOS 8.0, *)
  func getCookiesForTask(_ task: NSURLSessionTask, completionHandler completionHandler: ([NSHTTPCookie]?) -> Void)
}
let NSHTTPCookieManagerAcceptPolicyChangedNotification: String
let NSHTTPCookieManagerCookiesChangedNotification: String
