
class NSURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(URL: NSURL, MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  @NSCopying var URL: NSURL? { get }
  var MIMEType: String? { get }
  var expectedContentLength: Int64 { get }
  var textEncodingName: String? { get }
  var suggestedFilename: String? { get }
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSHTTPURLResponse : NSURLResponse {
  @available(OSX 10.7, *)
  init?(URL url: NSURL, statusCode: Int, HTTPVersion: String?, headerFields: [String : String]?)
  var statusCode: Int { get }
  var allHeaderFields: [NSObject : AnyObject] { get }
  class func localizedStringForStatusCode(statusCode: Int) -> String
  init(URL: NSURL, MIMEType: String?, expectedContentLength length: Int, textEncodingName name: String?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
