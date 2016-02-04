
@available(tvOS 7.0, *)
class JSVirtualMachine : Object {
  init!()
  func addManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
  func removeManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
}
