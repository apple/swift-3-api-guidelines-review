
class NSProxy : NSObjectProtocol {
  class func alloc() -> Self
  class func `class`() -> AnyClass
  class func forwardInvocation(invocation: NSInvocation)
  func forwardInvocation(invocation: NSInvocation)
  class func dealloc()
  func dealloc()
  class func finalize()
  func finalize()
  var description: String { get }
  var debugDescription: String { get }
  class func respondsToSelector(aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(object: AnyObject?) -> Bool
  class func isEqual(object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func performSelector(aSelector: Selector) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector) -> Unmanaged<AnyObject>!
  func performSelector(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  func performSelector(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func performSelector(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  func isProxy() -> Bool
  class func isProxy() -> Bool
  func isKindOfClass(aClass: AnyClass) -> Bool
  class func isKindOfClass(aClass: AnyClass) -> Bool
  func isMemberOfClass(aClass: AnyClass) -> Bool
  class func isMemberOfClass(aClass: AnyClass) -> Bool
  func conformsToProtocol(aProtocol: Protocol) -> Bool
  class func conformsToProtocol(aProtocol: Protocol) -> Bool
  func respondsToSelector(aSelector: Selector) -> Bool
}
