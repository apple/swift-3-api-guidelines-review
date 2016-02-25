
class NSURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(URL URL: NSURL, MIMEType MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  @NSCopying var URL: NSURL? { get }
  var MIMEType: String? { get }
  var expectedContentLength: Int64 { get }
  var textEncodingName: String? { get }
  var suggestedFilename: String? { get }
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
class NSHTTPURLResponse : NSURLResponse {
  @available(OSX 10.7, *)
  init?(URL url: NSURL, statusCode statusCode: Int, HTTPVersion HTTPVersion: String?, headerFields headerFields: [String : String]?)
  var statusCode: Int { get }
  var allHeaderFields: [NSObject : AnyObject] { get }
  class func localizedStringForStatusCode(_ statusCode: Int) -> String
}
