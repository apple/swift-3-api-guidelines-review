
class WebResource : NSObject, NSCoding, NSCopying {
  init!(data: NSData!, URL: NSURL!, MIMEType: String!, textEncodingName: String!, frameName: String!)
  @NSCopying var data: NSData! { get }
  var URL: NSURL! { get }
  var MIMEType: String! { get }
  var textEncodingName: String! { get }
  var frameName: String! { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
