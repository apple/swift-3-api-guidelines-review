
enum NSURLRequestCachePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UseProtocolCachePolicy
  case ReloadIgnoringLocalCacheData
  case ReloadIgnoringLocalAndRemoteCacheData
  static var ReloadIgnoringCacheData: NSURLRequestCachePolicy { get }
  case ReturnCacheDataElseLoad
  case ReturnCacheDataDontLoad
  case ReloadRevalidatingCacheData
}
enum NSURLRequestNetworkServiceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NetworkServiceTypeDefault
  case NetworkServiceTypeVoIP
  case NetworkServiceTypeVideo
  case NetworkServiceTypeBackground
  case NetworkServiceTypeVoice
}
class NSURLRequest : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  class func supportsSecureCoding() -> Bool
  convenience init(URL: NSURL)
  init(URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)
  @NSCopying var URL: NSURL? { get }
  var cachePolicy: NSURLRequestCachePolicy { get }
  var timeoutInterval: NSTimeInterval { get }
  @NSCopying var mainDocumentURL: NSURL? { get }
  @available(iOS 4.0, *)
  var networkServiceType: NSURLRequestNetworkServiceType { get }
  @available(iOS 6.0, *)
  var allowsCellularAccess: Bool { get }
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
class NSMutableURLRequest : NSURLRequest {
  @NSCopying var URL: NSURL?
  var cachePolicy: NSURLRequestCachePolicy
  var timeoutInterval: NSTimeInterval
  @NSCopying var mainDocumentURL: NSURL?
  @available(iOS 4.0, *)
  var networkServiceType: NSURLRequestNetworkServiceType
  @available(iOS 6.0, *)
  var allowsCellularAccess: Bool
  convenience init(URL: NSURL)
  init(URL: NSURL, cachePolicy: NSURLRequestCachePolicy, timeoutInterval: NSTimeInterval)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSURLRequest {
  var HTTPMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func valueForHTTPHeaderField(field: String) -> String?
  @NSCopying var HTTPBody: NSData? { get }
  var HTTPBodyStream: NSInputStream? { get }
  var HTTPShouldHandleCookies: Bool { get }
  @available(iOS 4.0, *)
  var HTTPShouldUsePipelining: Bool { get }
}
extension NSMutableURLRequest {
  var HTTPMethod: String
  var allHTTPHeaderFields: [String : String]?
  func setValue(value: String?, forHTTPHeaderField field: String)
  func addValue(value: String, forHTTPHeaderField field: String)
  @NSCopying var HTTPBody: NSData?
  var HTTPBodyStream: NSInputStream?
  var HTTPShouldHandleCookies: Bool
  @available(iOS 4.0, *)
  var HTTPShouldUsePipelining: Bool
}
