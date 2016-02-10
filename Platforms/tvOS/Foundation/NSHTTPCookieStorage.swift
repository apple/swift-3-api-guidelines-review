
enum HTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case always
  case never
  case onlyFromMainDocumentDomain
}
class HTTPCookieStorage : Object {
  class func shared() -> HTTPCookieStorage
  @available(tvOS 9.0, *)
  class func sharedCookieStorage(forGroupContainerIdentifier identifier: String) -> HTTPCookieStorage
  var cookies: [HTTPCookie]? { get }
  func setCookie(cookie: HTTPCookie)
  func deleteCookie(cookie: HTTPCookie)
  @available(tvOS 8.0, *)
  func removeCookies(since date: Date)
  func cookies(forURL URL: URL) -> [HTTPCookie]?
  func setCookies(cookies: [HTTPCookie], forURL URL: URL?, mainDocumentURL: URL?)
  var cookieAcceptPolicy: HTTPCookieAcceptPolicy
  @available(tvOS 5.0, *)
  func sortedCookies(usingDescriptors sortOrder: [SortDescriptor]) -> [HTTPCookie]
  init()
}
extension HTTPCookieStorage {
  @available(tvOS 8.0, *)
  func storeCookies(cookies: [HTTPCookie], forTask task: URLSessionTask)
  @available(tvOS 8.0, *)
  func getCookiesFor(task: URLSessionTask, completionHandler: ([HTTPCookie]?) -> Void)
}
let httpCookieManagerAcceptPolicyChangedNotification: String
let httpCookieManagerCookiesChangedNotification: String
