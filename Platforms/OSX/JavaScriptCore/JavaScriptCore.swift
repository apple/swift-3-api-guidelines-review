
@available(OSX 10.9, *)
class JSContext : Object {
  init!()
  init!(virtualMachine: JSVirtualMachine!)
  func evaluateScript(script: String!) -> JSValue!
  @available(OSX 10.10, *)
  func evaluateScript(script: String!, withSourceURL sourceURL: URL!) -> JSValue!
  class func current() -> JSContext!
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
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<Copying, ObjectProtocol>!)
}
extension JSContext {
  /*not inherited*/ init!(jsGlobalContextRef: JSGlobalContextRef)
  var jsGlobalContextRef: JSGlobalContextRef { get }
}
@available(OSX 10.9, *)
class JSValue : Object {
  var context: JSContext! { get }
  /*not inherited*/ init!(object value: AnyObject!, in context: JSContext!)
  /*not inherited*/ init!(bool value: Bool, in context: JSContext!)
  /*not inherited*/ init!(double value: Double, in context: JSContext!)
  /*not inherited*/ init!(int32 value: Int32, in context: JSContext!)
  /*not inherited*/ init!(uInt32 value: UInt32, in context: JSContext!)
  /*not inherited*/ init!(newObjectIn context: JSContext!)
  /*not inherited*/ init!(newArrayIn context: JSContext!)
  /*not inherited*/ init!(newRegularExpressionFromPattern pattern: String!, flags: String!, in context: JSContext!)
  /*not inherited*/ init!(newErrorFromMessage message: String!, in context: JSContext!)
  /*not inherited*/ init!(nullIn context: JSContext!)
  /*not inherited*/ init!(undefinedIn context: JSContext!)
  func toObject() -> AnyObject!
  func toObjectOf(expectedClass: AnyClass!) -> AnyObject!
  func toBool() -> Bool
  func toDouble() -> Double
  func toInt32() -> Int32
  func toUInt32() -> UInt32
  func toNumber() -> Number!
  func toString() -> String!
  func toDate() -> Date!
  func toArray() -> [AnyObject]!
  func toDictionary() -> [Object : AnyObject]!
  func forProperty(property: String!) -> JSValue!
  func setValue(value: AnyObject!, forProperty property: String!)
  func deleteProperty(property: String!) -> Bool
  func hasProperty(property: String!) -> Bool
  func defineProperty(property: String!, descriptor: AnyObject!)
  func atIndex(index: Int) -> JSValue!
  func setValue(value: AnyObject!, at index: Int)
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
  func isEqual(to value: AnyObject!) -> Bool
  func isEqualWithTypeCoercion(to value: AnyObject!) -> Bool
  func isInstance(of value: AnyObject!) -> Bool
  func call(arguments arguments: [AnyObject]!) -> JSValue!
  func construct(withArguments arguments: [AnyObject]!) -> JSValue!
  func invokeMethod(method: String!, withArguments arguments: [AnyObject]!) -> JSValue!
  init()
}
extension JSValue {
  /*not inherited*/ init!(point: CGPoint, in context: JSContext!)
  /*not inherited*/ init!(range: NSRange, in context: JSContext!)
  /*not inherited*/ init!(rect: CGRect, in context: JSContext!)
  /*not inherited*/ init!(size: CGSize, in context: JSContext!)
  func toPoint() -> CGPoint
  func toRange() -> NSRange
  func toRect() -> CGRect
  func toSize() -> CGSize
}
extension JSValue {
  func objectForKeyedSubscript(key: AnyObject!) -> JSValue!
  func objectAtIndexedSubscript(index: Int) -> JSValue!
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<Copying, ObjectProtocol>!)
  func setObject(object: AnyObject!, atIndexedSubscript index: Int)
}
extension JSValue {
  /*not inherited*/ init!(jsValueRef value: JSValueRef, in context: JSContext!)
  var jsValueRef: JSValueRef { get }
}
let JSPropertyDescriptorWritableKey: String
let JSPropertyDescriptorEnumerableKey: String
let JSPropertyDescriptorConfigurableKey: String
let JSPropertyDescriptorValueKey: String
let JSPropertyDescriptorGetKey: String
let JSPropertyDescriptorSetKey: String
@available(OSX 10.9, *)
class JSManagedValue : Object {
  @available(OSX 10.10, *)
  /*not inherited*/ init!(value: JSValue!, andOwner owner: AnyObject!)
  init!(value: JSValue!)
  var value: JSValue! { get }
  init()
}
@available(OSX 10.9, *)
class JSVirtualMachine : Object {
  init!()
  func addManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
  func removeManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
}
protocol JSExport {
}
