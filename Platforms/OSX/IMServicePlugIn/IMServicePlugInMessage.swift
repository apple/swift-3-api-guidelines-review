
class IMServicePlugInMessage : NSObject, NSCoding, NSCopying {
  class func servicePlugInMessageWithContent(_ content: NSAttributedString!) -> AnyObject!
  init!(content content: NSAttributedString!)
  class func servicePlugInMessageWithContent(_ content: NSAttributedString!, date date: NSDate!) -> AnyObject!
  init!(content content: NSAttributedString!, date date: NSDate!)
  var guid: String! { get }
  @NSCopying var content: NSAttributedString!
  @NSCopying var date: NSDate!
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
