
enum HTTPCookieAcceptPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case always
  case never
  case onlyFromMainDocumentDomain
}
class HTTPCookieStorage : Object {
  class func shared() -> HTTPCookieStorage
  @available(OSX 10.11, *)
  class func sharedCookieStorage(forGroupContainerIdentifier identifier: String) -> HTTPCookieStorage
  var cookies: [HTTPCookie]? { get }
  func setCookie(cookie: HTTPCookie)
  func deleteCookie(cookie: HTTPCookie)
  @available(OSX 10.10, *)
  func removeCookies(since date: Date)
  func cookies(forURL URL: URL) -> [HTTPCookie]?
  func setCookies(cookies: [HTTPCookie], forURL URL: URL?, mainDocumentURL: URL?)
  var cookieAcceptPolicy: HTTPCookieAcceptPolicy
  @available(OSX 10.7, *)
  func sortedCookies(usingDescriptors sortOrder: [SortDescriptor]) -> [HTTPCookie]
  init()
}
extension HTTPCookieStorage {
  @available(OSX 10.10, *)
  func storeCookies(cookies: [HTTPCookie], forTask task: URLSessionTask)
  @available(OSX 10.10, *)
  func getCookiesFor(task: URLSessionTask, completionHandler: ([HTTPCookie]?) -> Void)
}
let httpCookieManagerAcceptPolicyChangedNotification: String
let httpCookieManagerCookiesChangedNotification: String
