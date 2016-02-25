
@available(iOS 7.1, *)
class ADClient : NSObject {
  @available(iOS 7.1, *)
  class func sharedClient() -> ADClient!
  @available(iOS, introduced=7.1, deprecated=9.0, message="Use requestAttributionDetailsWithBlock instead.")
  func determineAppInstallationAttributionWithCompletionHandler(_ completionHandler: ((Bool) -> Void)!)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use requestAttributionDetailsWithBlock instead.")
  func lookupAdConversionDetails(_ completionHandler: ((NSDate!, NSDate!) -> Void)!)
  @available(iOS 9.0, *)
  func requestAttributionDetailsWithBlock(_ completionHandler: (([NSObject : AnyObject]!, NSError!) -> Void)!)
  @available(iOS 8.0, *)
  func addClientToSegments(_ segmentIdentifiers: [AnyObject]!, replaceExisting replaceExisting: Bool)
}
let ADClientErrorDomain: String
enum ADClientError : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case LimitAdTracking
}
