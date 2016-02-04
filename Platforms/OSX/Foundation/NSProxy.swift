
class Proxy : ObjectProtocol {
  class func alloc() -> Self
  class func `class`() -> AnyClass
  class func forwardInvocation(invocation: Invocation)
  func forwardInvocation(invocation: Invocation)
  class func dealloc()
  func dealloc()
  class func finalize()
  func finalize()
  var description: String { get }
  var debugDescription: String { get }
  class func respondsTo(aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(object: AnyObject?) -> Bool
  class func isEqual(object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func perform(aSelector: Selector) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector) -> Unmanaged<AnyObject>!
  func perform(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  func perform(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  func isProxy() -> Bool
  class func isProxy() -> Bool
  func isKindOf(aClass: AnyClass) -> Bool
  class func isKindOf(aClass: AnyClass) -> Bool
  func isMemberOf(aClass: AnyClass) -> Bool
  class func isMemberOf(aClass: AnyClass) -> Bool
  func conformsTo(aProtocol: Protocol) -> Bool
  class func conformsTo(aProtocol: Protocol) -> Bool
  func respondsTo(aSelector: Selector) -> Bool
}
