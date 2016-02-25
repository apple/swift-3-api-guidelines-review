
enum NSURLRequestCachePolicy : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NetworkServiceTypeDefault
  case NetworkServiceTypeVoIP
  case NetworkServiceTypeVideo
  case NetworkServiceTypeBackground
  case NetworkServiceTypeVoice
}
class NSURLRequest : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  class func supportsSecureCoding() -> Bool
  convenience init(URL URL: NSURL)
  init(URL URL: NSURL, cachePolicy cachePolicy: NSURLRequestCachePolicy, timeoutInterval timeoutInterval: NSTimeInterval)
  @NSCopying var URL: NSURL? { get }
  var cachePolicy: NSURLRequestCachePolicy { get }
  var timeoutInterval: NSTimeInterval { get }
  @NSCopying var mainDocumentURL: NSURL? { get }
  @available(iOS 4.0, *)
  var networkServiceType: NSURLRequestNetworkServiceType { get }
  @available(iOS 6.0, *)
  var allowsCellularAccess: Bool { get }
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
class NSMutableURLRequest : NSURLRequest {
}
extension NSURLRequest {
  var HTTPMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func valueForHTTPHeaderField(_ field: String) -> String?
  @NSCopying var HTTPBody: NSData? { get }
  var HTTPBodyStream: NSInputStream? { get }
  var HTTPShouldHandleCookies: Bool { get }
  @available(iOS 4.0, *)
  var HTTPShouldUsePipelining: Bool { get }
}
extension NSMutableURLRequest {
  func setValue(_ value: String?, forHTTPHeaderField field: String)
  func addValue(_ value: String, forHTTPHeaderField field: String)
}
