
@available(tvOS 7.0, *)
class JSContext : Object {
  init!()
  init!(virtualMachine: JSVirtualMachine!)
  func evaluateScript(script: String!) -> JSValue!
  @available(tvOS 8.0, *)
  func evaluateScript(script: String!, withSourceURL sourceURL: URL!) -> JSValue!
  class func current() -> JSContext!
  @available(tvOS 8.0, *)
  class func currentCallee() -> JSValue!
  class func currentThis() -> JSValue!
  class func currentArguments() -> [AnyObject]!
  var globalObject: JSValue! { get }
  var exception: JSValue!
  var exceptionHandler: ((JSContext!, JSValue!) -> Void)!
  var virtualMachine: JSVirtualMachine! { get }
  @available(tvOS 8.0, *)
  var name: String!
}
extension JSContext {
  func object(forKeyedSubscript key: AnyObject!) -> JSValue!
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<Copying, ObjectProtocol>!)
}
extension JSContext {
  /*not inherited*/ init!(jsGlobalContextRef: JSGlobalContextRef)
  var jsGlobalContextRef: JSGlobalContextRef { get }
}
