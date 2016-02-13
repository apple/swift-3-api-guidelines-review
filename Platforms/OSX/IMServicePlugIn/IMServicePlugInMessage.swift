
class IMServicePlugInMessage : Object, Coding, Copying {
  class func servicePlugInMessage(content content: AttributedString!) -> AnyObject!
  init!(content: AttributedString!)
  class func servicePlugInMessage(content content: AttributedString!, date: Date!) -> AnyObject!
  init!(content: AttributedString!, date: Date!)
  var guid: String! { get }
  @NSCopying var content: AttributedString!
  @NSCopying var date: Date!
  init()
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
}
