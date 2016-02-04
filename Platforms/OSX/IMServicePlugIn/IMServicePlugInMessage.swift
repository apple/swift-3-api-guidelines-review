
class IMServicePlugInMessage : NSObject, NSCoding, NSCopying {
  class func servicePlugInMessageWithContent(content: NSAttributedString!) -> AnyObject!
  init!(content: NSAttributedString!)
  class func servicePlugInMessageWithContent(content: NSAttributedString!, date: NSDate!) -> AnyObject!
  init!(content: NSAttributedString!, date: NSDate!)
  var guid: String! { get }
  @NSCopying var content: NSAttributedString!
  @NSCopying var date: NSDate!
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
