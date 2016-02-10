
enum URLRequestCachePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case useProtocolCachePolicy
  case reloadIgnoringLocalCacheData
  case reloadIgnoringLocalAndRemoteCacheData
  static var reloadIgnoringCacheData: URLRequestCachePolicy { get }
  case returnCacheDataElseLoad
  case returnCacheDataDontLoad
  case reloadRevalidatingCacheData
}
enum URLRequestNetworkServiceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case networkServiceTypeDefault
  case networkServiceTypeVoIP
  case networkServiceTypeVideo
  case networkServiceTypeBackground
  case networkServiceTypeVoice
}
class URLRequest : Object, SecureCoding, Copying, MutableCopying {
  class func supportsSecureCoding() -> Bool
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: URLRequestCachePolicy, timeoutInterval: TimeInterval)
  @NSCopying var url: URL? { get }
  var cachePolicy: URLRequestCachePolicy { get }
  var timeoutInterval: TimeInterval { get }
  @NSCopying var mainDocumentURL: URL? { get }
  @available(iOS 4.0, *)
  var networkServiceType: URLRequestNetworkServiceType { get }
  @available(iOS 6.0, *)
  var allowsCellularAccess: Bool { get }
  convenience init()
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(withZone zone: Zone = nil) -> AnyObject
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
}
class MutableURLRequest : URLRequest {
  @NSCopying var url: URL?
  var cachePolicy: URLRequestCachePolicy
  var timeoutInterval: TimeInterval
  @NSCopying var mainDocumentURL: URL?
  @available(iOS 4.0, *)
  var networkServiceType: URLRequestNetworkServiceType
  @available(iOS 6.0, *)
  var allowsCellularAccess: Bool
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: URLRequestCachePolicy, timeoutInterval: TimeInterval)
  convenience init()
  init?(coder aDecoder: Coder)
}
extension URLRequest {
  var httpMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func value(forHTTPHeaderField field: String) -> String?
  @NSCopying var httpBody: Data? { get }
  var httpBodyStream: InputStream? { get }
  var httpShouldHandleCookies: Bool { get }
  @available(iOS 4.0, *)
  var httpShouldUsePipelining: Bool { get }
}
extension MutableURLRequest {
  var httpMethod: String
  var allHTTPHeaderFields: [String : String]?
  func setValue(value: String?, forHTTPHeaderField field: String)
  func addValue(value: String, forHTTPHeaderField field: String)
  @NSCopying var httpBody: Data?
  var httpBodyStream: InputStream?
  var httpShouldHandleCookies: Bool
  @available(iOS 4.0, *)
  var httpShouldUsePipelining: Bool
}
