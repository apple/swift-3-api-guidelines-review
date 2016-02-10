
enum SLRequestMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GET
  case POST
  case DELETE
  case PUT
}
typealias SLRequestHandler = (Data!, HTTPURLResponse!, Error!) -> Void
@available(iOS 6.0, *)
class SLRequest : Object {
  /*not inherited*/ init!(forServiceType serviceType: String!, requestMethod: SLRequestMethod, url: URL!, parameters: [Object : AnyObject]!)
  var requestMethod: SLRequestMethod { get }
  var url: URL! { get }
  var parameters: [Object : AnyObject]! { get }
  func addMultipartData(data: Data!, withName name: String!, type: String!, filename: String!)
  func preparedURLRequest() -> URLRequest!
  func perform(handler handler: SLRequestHandler!)
  init()
}
