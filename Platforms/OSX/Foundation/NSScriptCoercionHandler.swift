
class ScriptCoercionHandler : Object {
  class func shared() -> ScriptCoercionHandler
  func coerceValue(value: AnyObject, to toClass: AnyClass) -> AnyObject?
  func registerCoercer(coercer: AnyObject, selector: Selector, toConvertFrom fromClass: AnyClass, to toClass: AnyClass)
  init()
}
