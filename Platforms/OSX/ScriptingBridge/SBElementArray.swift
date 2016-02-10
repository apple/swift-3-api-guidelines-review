
@available(OSX 10.5, *)
class SBElementArray : MutableArray {
  func objectWith(name name: String) -> AnyObject
  func objectWith(id identifier: AnyObject) -> AnyObject
  func objectAt(location location: AnyObject) -> AnyObject
  func arrayByApplying(selector: Selector) -> [AnyObject]
  func arrayByApplying(aSelector: Selector, withObject argument: AnyObject) -> [AnyObject]
  func get() -> [AnyObject]?
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
