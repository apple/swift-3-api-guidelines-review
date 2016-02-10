
class IMServicePlugInMessage : Object, Coding, Copying {
  class func servicePlugInMessageWith(content content: AttributedString!) -> AnyObject!
  init!(content: AttributedString!)
  class func servicePlugInMessageWith(content content: AttributedString!, date: Date!) -> AnyObject!
  init!(content: AttributedString!, date: Date!)
  var guid: String! { get }
  @NSCopying var content: AttributedString!
  @NSCopying var date: Date!
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
}
