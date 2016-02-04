
extension Object {
  @available(OSX 10.4, *)
  class func webScriptNameFor(selector: Selector) -> String!
  @available(OSX 10.4, *)
  class func isSelectorExcludedFromWebScript(selector: Selector) -> Bool
  @available(OSX 10.4, *)
  class func webScriptNameForKey(name: UnsafePointer<Int8>) -> String!
  @available(OSX 10.4, *)
  class func isKeyExcludedFromWebScript(name: UnsafePointer<Int8>) -> Bool
  @available(OSX 10.4, *)
  class func invokeUndefinedMethodFromWebScript(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  func invokeUndefinedMethodFromWebScript(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  class func invokeDefaultMethodWithArguments(arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  func invokeDefaultMethodWithArguments(arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  class func finalizeForWebScript()
  @available(OSX 10.4, *)
  func finalizeForWebScript()
}
@available(OSX 10.4, *)
class WebScriptObject : Object {
  class func throwException(exceptionMessage: String!) -> Bool
  @available(OSX 10.5, *)
  func jsObject() -> JSObjectRef
  func callWebScriptMethod(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  func evaluateWebScript(script: String!) -> AnyObject!
  func removeWebScriptKey(name: String!)
  func stringRepresentation() -> String!
  func webScriptValueAt(index: UInt32) -> AnyObject!
  func setWebScriptValueAt(index: UInt32, value: AnyObject!)
  func setException(description: String!)
  func jsValue() -> JSValue!
  init()
}
@available(OSX 10.4, *)
class WebUndefined : Object, Coding, Copying {
  init()
  @available(OSX 10.4, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
