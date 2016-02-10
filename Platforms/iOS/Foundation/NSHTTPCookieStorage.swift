
enum HTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case always
  case never
  case onlyFromMainDocumentDomain
}
class HTTPCookieStorage : Object {
  class func shared() -> HTTPCookieStorage
  @available(iOS 9.0, *)
  class func sharedCookieStorage(forGroupContainerIdentifier identifier: String) -> HTTPCookieStorage
  var cookies: [HTTPCookie]? { get }
  func setCookie(cookie: HTTPCookie)
  func deleteCookie(cookie: HTTPCookie)
  @available(iOS 8.0, *)
  func removeCookies(since date: Date)
  func cookies(for URL: URL) -> [HTTPCookie]?
  func setCookies(cookies: [HTTPCookie], for URL: URL?, mainDocumentURL: URL?)
  var cookieAcceptPolicy: HTTPCookieAcceptPolicy
  @available(iOS 5.0, *)
  func sortedCookies(using sortOrder: [SortDescriptor]) -> [HTTPCookie]
  init()
}
extension HTTPCookieStorage {
  @available(iOS 8.0, *)
  func storeCookies(cookies: [HTTPCookie], for task: URLSessionTask)
  @available(iOS 8.0, *)
  func getCookiesFor(task: URLSessionTask, completionHandler: ([HTTPCookie]?) -> Void)
}
let httpCookieManagerAcceptPolicyChangedNotification: String
let httpCookieManagerCookiesChangedNotification: String
