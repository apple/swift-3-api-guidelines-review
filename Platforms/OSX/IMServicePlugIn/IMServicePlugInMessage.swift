
class IMServicePlugInMessage : NSObject, NSCoding, NSCopying {
  class func servicePlugInMessage(withContent content: NSAttributedString!) -> AnyObject!
  init!(content content: NSAttributedString!)
  class func servicePlugInMessage(withContent content: NSAttributedString!, date date: NSDate!) -> AnyObject!
  init!(content content: NSAttributedString!, date date: NSDate!)
  var guid: String! { get }
  @NSCopying var content: NSAttributedString!
  @NSCopying var date: NSDate!
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
