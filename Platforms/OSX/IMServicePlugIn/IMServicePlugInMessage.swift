
class IMServicePlugInMessage : Object, Coding, Copying {
  class func servicePlugInMessageWithContent(content: AttributedString!) -> AnyObject!
  init!(content: AttributedString!)
  class func servicePlugInMessageWithContent(content: AttributedString!, date: Date!) -> AnyObject!
  init!(content: AttributedString!, date: Date!)
  var guid: String! { get }
  @NSCopying var content: AttributedString!
  @NSCopying var date: Date!
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
