
class WebResource : NSObject, NSCoding, NSCopying {
  init!(data: NSData!, url URL: NSURL!, mimeType MIMEType: String!, textEncodingName: String!, frameName: String!)
  @NSCopying var data: NSData! { get }
  var url: NSURL! { get }
  var mimeType: String! { get }
  var textEncodingName: String! { get }
  var frameName: String! { get }
  init()
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
