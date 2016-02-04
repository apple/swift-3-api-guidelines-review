
@available(OSX 10.5, *)
class SBElementArray : NSMutableArray {
  func objectWithName(name: String) -> AnyObject
  func objectWithID(identifier: AnyObject) -> AnyObject
  func objectAtLocation(location: AnyObject) -> AnyObject
  func arrayByApplyingSelector(selector: Selector) -> [AnyObject]
  func arrayByApplyingSelector(aSelector: Selector, withObject argument: AnyObject) -> [AnyObject]
  func get() -> [AnyObject]?
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
