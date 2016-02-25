
class NSScriptCoercionHandler : NSObject {
  class func sharedCoercionHandler() -> NSScriptCoercionHandler
  func coerceValue(_ value: AnyObject, toClass toClass: AnyClass) -> AnyObject?
  func registerCoercer(_ coercer: AnyObject, selector selector: Selector, toConvertFromClass fromClass: AnyClass, toClass toClass: AnyClass)
}
