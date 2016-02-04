
enum NSHTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Always
  case Never
  case OnlyFromMainDocumentDomain
}
class NSHTTPCookieStorage : NSObject {
  class func sharedHTTPCookieStorage() -> NSHTTPCookieStorage
  @available(iOS 9.0, *)
  class func sharedCookieStorageForGroupContainerIdentifier(identifier: String) -> NSHTTPCookieStorage
  var cookies: [NSHTTPCookie]? { get }
  func setCookie(cookie: NSHTTPCookie)
  func deleteCookie(cookie: NSHTTPCookie)
  @available(iOS 8.0, *)
  func removeCookiesSinceDate(date: NSDate)
  func cookiesForURL(URL: NSURL) -> [NSHTTPCookie]?
  func setCookies(cookies: [NSHTTPCookie], forURL URL: NSURL?, mainDocumentURL: NSURL?)
  var cookieAcceptPolicy: NSHTTPCookieAcceptPolicy
  @available(iOS 5.0, *)
  func sortedCookiesUsingDescriptors(sortOrder: [NSSortDescriptor]) -> [NSHTTPCookie]
  init()
}
extension NSHTTPCookieStorage {
  @available(iOS 8.0, *)
  func storeCookies(cookies: [NSHTTPCookie], forTask task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func getCookiesForTask(task: NSURLSessionTask, completionHandler: ([NSHTTPCookie]?) -> Void)
}
let NSHTTPCookieManagerAcceptPolicyChangedNotification: String
let NSHTTPCookieManagerCookiesChangedNotification: String
