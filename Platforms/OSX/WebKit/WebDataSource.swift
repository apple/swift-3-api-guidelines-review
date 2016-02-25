
class WebDataSource : NSObject {
  init!(request request: NSURLRequest!)
  @NSCopying var data: NSData! { get }
  var representation: WebDocumentRepresentation! { get }
  var initialRequest: NSURLRequest! { get }
  var request: NSMutableURLRequest! { get }
  var response: NSURLResponse! { get }
  var textEncodingName: String! { get }
  var loading: Bool { get }
  var pageTitle: String! { get }
  var unreachableURL: NSURL! { get }
  var webArchive: WebArchive! { get }
  var mainResource: WebResource! { get }
  var subresources: [AnyObject]! { get }
  func subresourceForURL(_ URL: NSURL!) -> WebResource!
  func addSubresource(_ subresource: WebResource!)
}
