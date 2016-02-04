
class NSScriptCoercionHandler : NSObject {
  class func sharedCoercionHandler() -> NSScriptCoercionHandler
  func coerceValue(value: AnyObject, toClass: AnyClass) -> AnyObject?
  func registerCoercer(coercer: AnyObject, selector: Selector, toConvertFromClass fromClass: AnyClass, toClass: AnyClass)
  init()
}
