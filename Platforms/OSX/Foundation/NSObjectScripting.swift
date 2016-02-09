
extension Object {
  @available(OSX 10.5, *)
  class func scriptingValueFor(objectSpecifier: ScriptObjectSpecifier) -> AnyObject?
  @available(OSX 10.5, *)
  func scriptingValueFor(objectSpecifier: ScriptObjectSpecifier) -> AnyObject?
  var scriptingProperties: [String : AnyObject]?
  @available(OSX 10.5, *)
  class func copyScriptingValue(value: AnyObject, forKey key: String, withProperties properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  func copyScriptingValue(value: AnyObject, forKey key: String, withProperties properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  class func newScriptingObject(of objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: AnyObject?, properties: [String : AnyObject]) -> AnyObject?
  @available(OSX 10.5, *)
  func newScriptingObject(of objectClass: AnyClass, forValueForKey key: String, withContentsValue contentsValue: AnyObject?, properties: [String : AnyObject]) -> AnyObject?
  class func scriptingProperties() -> [String : AnyObject]?
  class func setScriptingProperties(scriptingProperties: [String : AnyObject]?)
}
