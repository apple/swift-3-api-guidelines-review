
class NSScriptCoercionHandler : NSObject {
  class func shared() -> NSScriptCoercionHandler
  func coerceValue(_ value: AnyObject, to toClass: AnyClass) -> AnyObject?
  func registerCoercer(_ coercer: AnyObject, selector selector: Selector, toConvertFrom fromClass: AnyClass, to toClass: AnyClass)
}
