
enum NSHTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case always
  case never
  case onlyFromMainDocumentDomain
}
class NSHTTPCookieStorage : NSObject {
  class func shared() -> NSHTTPCookieStorage
  @available(iOS 9.0, *)
  class func sharedCookieStorage(forGroupContainerIdentifier identifier: String) -> NSHTTPCookieStorage
  var cookies: [NSHTTPCookie]? { get }
  func setCookie(cookie: NSHTTPCookie)
  func deleteCookie(cookie: NSHTTPCookie)
  @available(iOS 8.0, *)
  func removeCookies(since date: NSDate)
  func cookies(for URL: NSURL) -> [NSHTTPCookie]?
  func setCookies(cookies: [NSHTTPCookie], for URL: NSURL?, mainDocumentURL: NSURL?)
  var cookieAcceptPolicy: NSHTTPCookieAcceptPolicy
  @available(iOS 5.0, *)
  func sortedCookies(using sortOrder: [NSSortDescriptor]) -> [NSHTTPCookie]
  init()
}
extension NSHTTPCookieStorage {
  @available(iOS 8.0, *)
  func storeCookies(cookies: [NSHTTPCookie], for task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func getCookiesFor(task: NSURLSessionTask, completionHandler: ([NSHTTPCookie]?) -> Void)
}
let NSHTTPCookieManagerAcceptPolicyChangedNotification: String
let NSHTTPCookieManagerCookiesChangedNotification: String
