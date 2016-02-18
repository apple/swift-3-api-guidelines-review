
class URLResponse : Object, SecureCoding, Copying {
  init(url URL: URL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  @NSCopying var url: URL? { get }
  var mimeType: String? { get }
  var expectedContentLength: Int64 { get }
  var textEncodingName: String? { get }
  var suggestedFilename: String? { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
}
class HTTPURLResponse : URLResponse {
  @available(iOS 5.0, *)
  init?(url: URL, statusCode: Int, httpVersion HTTPVersion: String?, headerFields: [String : String]?)
  var statusCode: Int { get }
  var allHeaderFields: [Object : AnyObject] { get }
  class func localizedString(forStatusCode statusCode: Int) -> String
  init(url URL: URL, mimeType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  convenience init()
  init?(coder aDecoder: Coder)
}
