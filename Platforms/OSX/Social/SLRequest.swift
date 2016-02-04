
enum SLRequestMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GET
  case POST
  case DELETE
  case PUT
}
typealias SLRequestHandler = (NSData!, NSHTTPURLResponse!, NSError!) -> Void
@available(OSX 10.8, *)
class SLRequest : NSObject {
  /*not inherited*/ init!(forServiceType serviceType: String!, requestMethod: SLRequestMethod, URL url: NSURL!, parameters: [NSObject : AnyObject]!)
  var requestMethod: SLRequestMethod { get }
  var URL: NSURL! { get }
  var parameters: [NSObject : AnyObject]! { get }
  func addMultipartData(data: NSData!, withName name: String!, type: String!, filename: String!)
  @available(*, deprecated)
  func addMultipartData(data: NSData!, withName name: String!, type: String!)
  func preparedURLRequest() -> NSURLRequest!
  func performRequestWithHandler(handler: SLRequestHandler!)
  init()
}
