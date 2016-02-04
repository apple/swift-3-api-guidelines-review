
class WebDataSource : Object {
  init!(request: URLRequest!)
  @NSCopying var data: Data! { get }
  var representation: WebDocumentRepresentation! { get }
  var webFrame: WebFrame! { get }
  var initialRequest: URLRequest! { get }
  var request: MutableURLRequest! { get }
  var response: URLResponse! { get }
  var textEncodingName: String! { get }
  var isLoading: Bool { get }
  var pageTitle: String! { get }
  var unreachableURL: URL! { get }
  var webArchive: WebArchive! { get }
  var mainResource: WebResource! { get }
  var subresources: [AnyObject]! { get }
  func subresourceFor(URL: URL!) -> WebResource!
  func addSubresource(subresource: WebResource!)
  init()
}
