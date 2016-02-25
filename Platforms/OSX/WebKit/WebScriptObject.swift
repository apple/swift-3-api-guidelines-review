
extension NSObject {
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
class WebScriptObject : NSObject {
  class func throwException(_ exceptionMessage: String!) -> Bool
  @available(OSX 10.5, *)
  func jsObject() -> JSObjectRef
  func callWebScriptMethod(_ name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!
  func evaluateWebScript(_ script: String!) -> AnyObject!
  func removeWebScriptKey(_ name: String!)
  func stringRepresentation() -> String!
  func webScriptValue(at index: UInt32) -> AnyObject!
  func setWebScriptValueAt(_ index: UInt32, value value: AnyObject!)
  func setException(_ description: String!)
  func jsValue() -> JSValue!
}
@available(OSX 10.4, *)
class WebUndefined : NSObject, NSCoding, NSCopying {
  @available(OSX 10.4, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
