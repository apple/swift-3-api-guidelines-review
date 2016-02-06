
@available(iOS 7.0, *)
class JSContext : Object {
  init!()
  init!(virtualMachine: JSVirtualMachine!)
  func evaluateScript(script: String!) -> JSValue!
  @available(iOS 8.0, *)
  func evaluateScript(script: String!, withSourceURL sourceURL: URL!) -> JSValue!
  class func current() -> JSContext!
  @available(iOS 8.0, *)
  class func currentCallee() -> JSValue!
  class func currentThis() -> JSValue!
  class func currentArguments() -> [AnyObject]!
  var globalObject: JSValue! { get }
  var exception: JSValue!
  var exceptionHandler: ((JSContext!, JSValue!) -> Void)!
  var virtualMachine: JSVirtualMachine! { get }
  @available(iOS 8.0, *)
  var name: String!
}
extension JSContext {
  func objectFor(keyedSubscript key: AnyObject!) -> JSValue!
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<Copying, ObjectProtocol>!)
}
extension JSContext {
  /*not inherited*/ init!(jsGlobalContextRef: JSGlobalContextRef)
  var jsGlobalContextRef: JSGlobalContextRef { get }
}
