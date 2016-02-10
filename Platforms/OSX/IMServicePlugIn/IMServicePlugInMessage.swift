
class IMServicePlugInMessage : Object, Coding, Copying {
  class func servicePlugInMessage(withContent content: AttributedString!) -> AnyObject!
  init!(content: AttributedString!)
  class func servicePlugInMessage(withContent content: AttributedString!, date: Date!) -> AnyObject!
  init!(content: AttributedString!, date: Date!)
  var guid: String! { get }
  @NSCopying var content: AttributedString!
  @NSCopying var date: Date!
  init()
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
