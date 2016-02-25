
class WebResource : NSObject, NSCoding, NSCopying {
  init!(data data: NSData!, URL URL: NSURL!, MIMEType MIMEType: String!, textEncodingName textEncodingName: String!, frameName frameName: String!)
  @NSCopying var data: NSData! { get }
  var URL: NSURL! { get }
  var MIMEType: String! { get }
  var textEncodingName: String! { get }
  var frameName: String! { get }
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
