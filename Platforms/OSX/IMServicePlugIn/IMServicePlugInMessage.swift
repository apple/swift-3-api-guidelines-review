
class IMServicePlugInMessage : NSObject, NSCoding, NSCopying {
  class func servicePlugInMessage(withContent content: NSAttributedString!) -> AnyObject!
  init!(content: NSAttributedString!)
  class func servicePlugInMessage(withContent content: NSAttributedString!, date: NSDate!) -> AnyObject!
  init!(content: NSAttributedString!, date: NSDate!)
  var guid: String! { get }
  @NSCopying var content: NSAttributedString!
  @NSCopying var date: NSDate!
  init()
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
