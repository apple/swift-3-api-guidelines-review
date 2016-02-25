
@available(OSX 10.5, *)
class SBElementArray : NSMutableArray {
  func objectWithName(_ name: String) -> AnyObject
  func objectWithID(_ identifier: AnyObject) -> AnyObject
  func objectAtLocation(_ location: AnyObject) -> AnyObject
  func arrayByApplyingSelector(_ selector: Selector) -> [AnyObject]
  func arrayByApplyingSelector(_ aSelector: Selector, withObject argument: AnyObject) -> [AnyObject]
  func get() -> [AnyObject]?
}
