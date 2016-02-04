
@available(iOS 7.1, *)
class ADClient : Object {
  @available(iOS 7.1, *)
  class func shared() -> ADClient!
  @available(iOS, introduced=7.1, deprecated=9.0, message="Use requestAttributionDetailsWithBlock instead.")
  func determineAppInstallationAttributionWithCompletionHandler(completionHandler: ((Bool) -> Void)!)
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use requestAttributionDetailsWithBlock instead.")
  func lookupAdConversionDetails(completionHandler: ((Date!, Date!) -> Void)!)
  @available(iOS 9.0, *)
  func requestAttributionDetailsWith(completionHandler: (([Object : AnyObject]!, Error!) -> Void)!)
  @available(iOS 8.0, *)
  func addToSegments(segmentIdentifiers: [AnyObject]!, replaceExisting: Bool)
  init()
}
let ADClientErrorDomain: String
enum ADClientError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case LimitAdTracking
}
