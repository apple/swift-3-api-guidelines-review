
@available(iOS 7.1, *)
class ADClient : NSObject {
  @available(iOS 7.1, *)
  class func sharedClient() -> ADClient!
  @available(iOS, introduced=7.1, deprecated=9.0, message="Use requestAttributionDetailsWithBlock instead.")
  func determineAppInstallationAttributionWithCompletionHandler(completionHandler: ((Bool) -> Void)!)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use requestAttributionDetailsWithBlock instead.")
  func lookupAdConversionDetails(completionHandler: ((NSDate!, NSDate!) -> Void)!)
  @available(iOS 9.0, *)
  func requestAttributionDetailsWithBlock(completionHandler: (([NSObject : AnyObject]!, NSError!) -> Void)!)
  @available(iOS 8.0, *)
  func addClientToSegments(segmentIdentifiers: [AnyObject]!, replaceExisting: Bool)
  init()
}
let ADClientErrorDomain: String
enum ADClientError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case LimitAdTracking
}
