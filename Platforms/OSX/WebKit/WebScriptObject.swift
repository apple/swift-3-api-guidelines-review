
extension NSObject {
  @available(OSX 10.4, *)
  class func webScriptNameForSelector(_ selector: Selector) -> String!
  @available(OSX 10.4, *)
  class func isSelectorExcludedFromWebScript(_ selector: Selector) -> Bool
  @available(OSX 10.4, *)
  class func webScriptNameForKey(_ name: UnsafePointer<Int8>) -> String!
  @available(OSX 10.4, *)
  class func isKeyExcludedFromWebScript(_ name: UnsafePointer<Int8>) -> Bool
  @available(OSX 10.4, *)
  class func invokeUndefinedMethodFromWebScript(_ name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  func invokeUndefinedMethodFromWebScript(_ name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  class func invokeDefaultMethodWithArguments(_ arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  func invokeDefaultMethodWithArguments(_ arguments: [AnyObject]!) -> AnyObject!
  @available(OSX 10.4, *)
  class func finalizeForWebScript()
  @available(OSX 10.4, *)
  func finalizeForWebScript()
}
@available(OSX 10.4, *)
class WebScriptObject : NSObject {
  class func throwException(_ exceptionMessage: String!) -> Bool
  @available(OSX 10.5, *)
  func JSObject() -> JSObjectRef
  func callWebScriptMethod(_ name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  func evaluateWebScript(_ script: String!) -> AnyObject!
  func removeWebScriptKey(_ name: String!)
  func stringRepresentation() -> String!
  func webScriptValueAtIndex(_ index: UInt32) -> AnyObject!
  func setWebScriptValueAtIndex(_ index: UInt32, value value: AnyObject!)
  func setException(_ description: String!)
  func JSValue() -> JSValue!
}
@available(OSX 10.4, *)
class WebUndefined : NSObject, NSCoding, NSCopying {
  @available(OSX 10.4, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
