
let httpCookieName: String
let httpCookieValue: String
let httpCookieOriginURL: String
let httpCookieVersion: String
let httpCookieDomain: String
let httpCookiePath: String
let httpCookieSecure: String
let httpCookieExpires: String
let httpCookieComment: String
let httpCookieCommentURL: String
let httpCookieDiscard: String
let httpCookieMaximumAge: String
let httpCookiePort: String
class HTTPCookie : Object {
  init?(properties: [String : AnyObject])
  class func requestHeaderFields(with cookies: [HTTPCookie]) -> [String : String]
  class func cookies(withResponseHeaderFields headerFields: [String : String], for URL: URL) -> [HTTPCookie]
  var properties: [String : AnyObject]? { get }
  var version: Int { get }
  var name: String { get }
  var value: String { get }
  @NSCopying var expiresDate: Date? { get }
  var isSessionOnly: Bool { get }
  var domain: String { get }
  var path: String { get }
  var isSecure: Bool { get }
  var isHTTPOnly: Bool { get }
  var comment: String? { get }
  @NSCopying var commentURL: URL? { get }
  var portList: [Number]? { get }
  init()
}
