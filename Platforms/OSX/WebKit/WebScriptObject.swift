
extension NSObject {
  @available(OSX 10.4, *)
  class func webScriptNameForSelector(selector: Selector) -> String!
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
class WebScriptObject : NSObject {
  class func throwException(exceptionMessage: String!) -> Bool
  @available(OSX 10.5, *)
  func JSObject() -> JSObjectRef
  func callWebScriptMethod(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  func evaluateWebScript(script: String!) -> AnyObject!
  func removeWebScriptKey(name: String!)
  func stringRepresentation() -> String!
  func webScriptValueAtIndex(index: UInt32) -> AnyObject!
  func setWebScriptValueAtIndex(index: UInt32, value: AnyObject!)
  func setException(description: String!)
  func JSValue() -> JSValue!
  init()
}
@available(OSX 10.4, *)
class WebUndefined : NSObject, NSCoding, NSCopying {
  init()
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
