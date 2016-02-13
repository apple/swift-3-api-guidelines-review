
@available(OSX 10.5, *)
class SBElementArray : MutableArray {
  func object(name name: String) -> AnyObject
  func object(id identifier: AnyObject) -> AnyObject
  func object(atLocation location: AnyObject) -> AnyObject
  func array(byApplying selector: Selector) -> [AnyObject]
  func array(byApplying aSelector: Selector, with argument: AnyObject) -> [AnyObject]
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
