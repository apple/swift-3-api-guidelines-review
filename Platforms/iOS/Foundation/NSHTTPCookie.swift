
let NSHTTPCookieName: String
let NSHTTPCookieValue: String
let NSHTTPCookieOriginURL: String
let NSHTTPCookieVersion: String
let NSHTTPCookieDomain: String
let NSHTTPCookiePath: String
let NSHTTPCookieSecure: String
let NSHTTPCookieExpires: String
let NSHTTPCookieComment: String
let NSHTTPCookieCommentURL: String
let NSHTTPCookieDiscard: String
let NSHTTPCookieMaximumAge: String
let NSHTTPCookiePort: String
class NSHTTPCookie : NSObject {
  init?(properties properties: [String : AnyObject])
  class func requestHeaderFieldsWithCookies(_ cookies: [NSHTTPCookie]) -> [String : String]
  class func cookiesWithResponseHeaderFields(_ headerFields: [String : String], forURL URL: NSURL) -> [NSHTTPCookie]
  var properties: [String : AnyObject]? { get }
  var version: Int { get }
  var name: String { get }
  var value: String { get }
  @NSCopying var expiresDate: NSDate? { get }
  var sessionOnly: Bool { get }
  var domain: String { get }
  var path: String { get }
  var secure: Bool { get }
  var HTTPOnly: Bool { get }
  var comment: String? { get }
  @NSCopying var commentURL: NSURL? { get }
  var portList: [NSNumber]? { get }
}
