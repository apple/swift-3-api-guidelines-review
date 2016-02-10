
extension Object {
  @available(OSX 10.4, *)
  class func webScriptName(for selector: Selector) -> String!
  @available(OSX 10.4, *)
  class func isSelectorExcluded(fromWebScript selector: Selector) -> Bool
  @available(OSX 10.4, *)
  class func webScriptName(forKey name: UnsafePointer<Int8>) -> String!
  @available(OSX 10.4, *)
  class func isKeyExcluded(fromWebScript name: UnsafePointer<Int8>) -> Bool
  @available(OSX 10.4, *)
  class func invokeUndefinedMethod(fromWebScript name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  func invokeUndefinedMethod(fromWebScript name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  class func invokeDefaultMethod(withArguments arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  func invokeDefaultMethod(withArguments arguments: [AnyObject]!) -> AnyObject!
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
  func webScriptValue(at index: UInt32) -> AnyObject!
  func setWebScriptValueAt(index: UInt32, value: AnyObject!)
  func setException(description: String!)
  func jsValue() -> JSValue!
  init()
}
@available(OSX 10.4, *)
class WebUndefined : Object, Coding, Copying {
  init()
  @available(OSX 10.4, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.4, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
