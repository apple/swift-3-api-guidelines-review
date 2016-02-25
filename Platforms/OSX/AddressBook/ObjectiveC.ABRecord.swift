
class ABRecord : NSObject {
  @available(OSX 10.5, *)
  init!(addressBook addressBook: ABAddressBook!)
  func value(forProperty property: String!) -> AnyObject!
  @available(OSX 10.7, *)
  func setValue(_ value: AnyObject!, forProperty property: String!, error error: ()) throws
  func setValue(_ value: AnyObject!, forProperty property: String!) -> Bool
  func removeValue(forProperty property: String!) -> Bool
  @available(OSX 10.4, *)
  func isReadOnly() -> Bool
}
extension ABRecord {
  var uniqueId: String! { get }
  @available(OSX 10.10, *)
  var displayName: String! { get }
}
