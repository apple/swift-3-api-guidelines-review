
@available(iOS 7.0, *)
class JSVirtualMachine : NSObject {
  init!()
  func addManagedReference(_ object: AnyObject!, withOwner owner: AnyObject!)
  func removeManagedReference(_ object: AnyObject!, withOwner owner: AnyObject!)
}
