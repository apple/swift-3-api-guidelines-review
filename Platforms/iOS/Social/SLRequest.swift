
enum SLRequestMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GET
  case POST
  case DELETE
  case PUT
}
typealias SLRequestHandler = (NSData!, NSHTTPURLResponse!, NSError!) -> Void
@available(iOS 6.0, *)
class SLRequest : NSObject {
  /*not inherited*/ init!(forServiceType serviceType: String!, requestMethod: SLRequestMethod, URL url: NSURL!, parameters: [NSObject : AnyObject]!)
  var requestMethod: SLRequestMethod { get }
  var URL: NSURL! { get }
  var parameters: [NSObject : AnyObject]! { get }
  func addMultipartData(data: NSData!, withName name: String!, type: String!, filename: String!)
  func preparedURLRequest() -> NSURLRequest!
  func performRequestWithHandler(handler: SLRequestHandler!)
  init()
}
