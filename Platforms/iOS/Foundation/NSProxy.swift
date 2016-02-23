
class NSProxy : NSObjectProtocol {
  class func alloc() -> Self
  class func `class`() -> AnyClass
  class func forwardInvocation(_ invocation: NSInvocation)
  func forwardInvocation(_ invocation: NSInvocation)
  class func dealloc()
  func dealloc()
  class func finalize()
  func finalize()
  var description: String { get }
  var debugDescription: String { get }
  class func responds(to aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(_ object: AnyObject?) -> Bool
  class func isEqual(_ object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func perform(_ aSelector: Selector) -> Unmanaged<AnyObject>!
  class func perform(_ aSelector: Selector) -> Unmanaged<AnyObject>!
  func perform(_ aSelector: Selector, with object: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(_ aSelector: Selector, with object: AnyObject!) -> Unmanaged<AnyObject>!
  func perform(_ aSelector: Selector, with object1: AnyObject!, with object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func perform(_ aSelector: Selector, with object1: AnyObject!, with object2: AnyObject!) -> Unmanaged<AnyObject>!
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
