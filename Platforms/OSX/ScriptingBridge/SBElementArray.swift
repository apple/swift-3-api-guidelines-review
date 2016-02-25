
@available(OSX 10.5, *)
class SBElementArray : NSMutableArray {
  func object(withName name: String) -> AnyObject
  func object(withID identifier: AnyObject) -> AnyObject
  func object(atLocation location: AnyObject) -> AnyObject
  func array(byApplying selector: Selector) -> [AnyObject]
  func array(byApplying aSelector: Selector, with argument: AnyObject) -> [AnyObject]
  func get() -> [AnyObject]?
}
