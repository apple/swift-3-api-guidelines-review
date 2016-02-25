
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
  class func respondsToSelector(_ aSelector: Selector) -> Bool
  class func description() -> String
  class func debugDescription() -> String
  func isEqual(_ object: AnyObject?) -> Bool
  class func isEqual(_ object: AnyObject?) -> Bool
  var hash: Int { get }
  var superclass: AnyClass? { get }
  func `self`() -> Self
  func performSelector(_ aSelector: Selector) -> Unmanaged<AnyObject>!
  class func performSelector(_ aSelector: Selector) -> Unmanaged<AnyObject>!
  func performSelector(_ aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  class func performSelector(_ aSelector: Selector, withObject object: AnyObject!) -> Unmanaged<AnyObject>!
  func performSelector(_ aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  class func performSelector(_ aSelector: Selector, withObject object1: AnyObject!, withObject object2: AnyObject!) -> Unmanaged<AnyObject>!
  func isProxy() -> Bool
  class func isProxy() -> Bool
  func isKindOfClass(_ aClass: AnyClass) -> Bool
  class func isKindOfClass(_ aClass: AnyClass) -> Bool
  func isMemberOfClass(_ aClass: AnyClass) -> Bool
  class func isMemberOfClass(_ aClass: AnyClass) -> Bool
  func conformsToProtocol(_ aProtocol: Protocol) -> Bool
  class func conformsToProtocol(_ aProtocol: Protocol) -> Bool
  func respondsToSelector(_ aSelector: Selector) -> Bool
}
