
@available(OSX 10.9, *)
class JSContext : NSObject {
  init!()
  init!(virtualMachine: JSVirtualMachine!)
  func evaluateScript(script: String!) -> JSValue!
  @available(OSX 10.10, *)
  func evaluateScript(script: String!, withSourceURL sourceURL: NSURL!) -> JSValue!
  class func currentContext() -> JSContext!
  @available(OSX 10.10, *)
  class func currentCallee() -> JSValue!
  class func currentThis() -> JSValue!
  class func currentArguments() -> [AnyObject]!
  var globalObject: JSValue! { get }
  var exception: JSValue!
  var exceptionHandler: ((JSContext!, JSValue!) -> Void)!
  var virtualMachine: JSVirtualMachine! { get }
  @available(OSX 10.10, *)
  var name: String!
}
extension JSContext {
  func objectForKeyedSubscript(key: AnyObject!) -> JSValue!
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<NSCopying, NSObjectProtocol>!)
}
extension JSContext {
  /*not inherited*/ init!(JSGlobalContextRef jsGlobalContextRef: JSGlobalContextRef)
  var JSGlobalContextRef: JSGlobalContextRef { get }
}
@available(OSX 10.9, *)
class JSValue : NSObject {
  var context: JSContext! { get }
  /*not inherited*/ init!(object value: AnyObject!, inContext context: JSContext!)
  /*not inherited*/ init!(bool value: Bool, inContext context: JSContext!)
  /*not inherited*/ init!(double value: Double, inContext context: JSContext!)
  /*not inherited*/ init!(int32 value: Int32, inContext context: JSContext!)
  /*not inherited*/ init!(UInt32 value: UInt32, inContext context: JSContext!)
  /*not inherited*/ init!(newObjectInContext context: JSContext!)
  /*not inherited*/ init!(newArrayInContext context: JSContext!)
  /*not inherited*/ init!(newRegularExpressionFromPattern pattern: String!, flags: String!, inContext context: JSContext!)
  /*not inherited*/ init!(newErrorFromMessage message: String!, inContext context: JSContext!)
  /*not inherited*/ init!(nullInContext context: JSContext!)
  /*not inherited*/ init!(undefinedInContext context: JSContext!)
  func toObject() -> AnyObject!
  func toObjectOfClass(expectedClass: AnyClass!) -> AnyObject!
  func toBool() -> Bool
  func toDouble() -> Double
  func toInt32() -> Int32
  func toUInt32() -> UInt32
  func toNumber() -> NSNumber!
  func toString() -> String!
  func toDate() -> NSDate!
  func toArray() -> [AnyObject]!
  func toDictionary() -> [NSObject : AnyObject]!
  func valueForProperty(property: String!) -> JSValue!
  func setValue(value: AnyObject!, forProperty property: String!)
  func deleteProperty(property: String!) -> Bool
  func hasProperty(property: String!) -> Bool
  func defineProperty(property: String!, descriptor: AnyObject!)
  func valueAtIndex(index: Int) -> JSValue!
  func setValue(value: AnyObject!, atIndex index: Int)
  var isUndefined: Bool { get }
  var isNull: Bool { get }
  var isBoolean: Bool { get }
  var isNumber: Bool { get }
  var isString: Bool { get }
  var isObject: Bool { get }
  @available(OSX 10.11, *)
  var isArray: Bool { get }
  @available(OSX 10.11, *)
  var isDate: Bool { get }
  func isEqualToObject(value: AnyObject!) -> Bool
  func isEqualWithTypeCoercionToObject(value: AnyObject!) -> Bool
  func isInstanceOf(value: AnyObject!) -> Bool
  func callWithArguments(arguments: [AnyObject]!) -> JSValue!
  func constructWithArguments(arguments: [AnyObject]!) -> JSValue!
  func invokeMethod(method: String!, withArguments arguments: [AnyObject]!) -> JSValue!
  init()
}
extension JSValue {
  /*not inherited*/ init!(point: CGPoint, inContext context: JSContext!)
  /*not inherited*/ init!(range: NSRange, inContext context: JSContext!)
  /*not inherited*/ init!(rect: CGRect, inContext context: JSContext!)
  /*not inherited*/ init!(size: CGSize, inContext context: JSContext!)
  func toPoint() -> CGPoint
  func toRange() -> NSRange
  func toRect() -> CGRect
  func toSize() -> CGSize
}
extension JSValue {
  func objectForKeyedSubscript(key: AnyObject!) -> JSValue!
  func objectAtIndexedSubscript(index: Int) -> JSValue!
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<NSCopying, NSObjectProtocol>!)
  func setObject(object: AnyObject!, atIndexedSubscript index: Int)
}
extension JSValue {
  /*not inherited*/ init!(JSValueRef value: JSValueRef, inContext context: JSContext!)
  var JSValueRef: JSValueRef { get }
}
let JSPropertyDescriptorWritableKey: String
let JSPropertyDescriptorEnumerableKey: String
let JSPropertyDescriptorConfigurableKey: String
let JSPropertyDescriptorValueKey: String
let JSPropertyDescriptorGetKey: String
let JSPropertyDescriptorSetKey: String
@available(OSX 10.9, *)
class JSManagedValue : NSObject {
  @available(OSX 10.10, *)
  /*not inherited*/ init!(value: JSValue!, andOwner owner: AnyObject!)
  init!(value: JSValue!)
  var value: JSValue! { get }
  init()
}
@available(OSX 10.9, *)
class JSVirtualMachine : NSObject {
  init!()
  func addManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
  func removeManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
}
protocol JSExport {
}
