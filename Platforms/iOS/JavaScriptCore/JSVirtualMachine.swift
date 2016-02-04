
@available(iOS 7.0, *)
class JSVirtualMachine : NSObject {
  init!()
  func addManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
  func removeManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
}
