
class ABRecord : NSObject {
  init!()
  @available(OSX 10.5, *)
  init!(addressBook: ABAddressBook!)
  func valueForProperty(property: String!) -> AnyObject!
  @available(OSX 10.7, *)
  func setValue(value: AnyObject!, forProperty property: String!, error: ()) throws
  func setValue(value: AnyObject!, forProperty property: String!) -> Bool
  func removeValueForProperty(property: String!) -> Bool
  @available(OSX 10.4, *)
  func isReadOnly() -> Bool
}
extension ABRecord {
  var uniqueId: String! { get }
  @available(OSX 10.10, *)
  var displayName: String! { get }
}
