
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
  class func responds(to aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(object: AnyObject?) -> Bool
  class func isEqual(object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func perform(aSelector: Selector) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector) -> Unmanaged<AnyObject>!
  func perform(aSelector: Selector, with object: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector, with object: AnyObject!) -> Unmanaged<AnyObject>!
  func perform(aSelector: Selector, with object1: AnyObject!, with object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(aSelector: Selector, with object1: AnyObject!, with object2: AnyObject!) -> Unmanaged<AnyObject>!
  func isProxy() -> Bool
  class func isProxy() -> Bool
  func isKind(of aClass: AnyClass) -> Bool
  class func isKind(of aClass: AnyClass) -> Bool
  func isMember(of aClass: AnyClass) -> Bool
  class func isMember(of aClass: AnyClass) -> Bool
  func conforms(to aProtocol: Protocol) -> Bool
  class func conforms(to aProtocol: Protocol) -> Bool
  func responds(to aSelector: Selector) -> Bool
}
