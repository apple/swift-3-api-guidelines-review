
@available(iOS 7.0, *)
class JSValue : NSObject {
  var context: JSContext! { get }
  /*not inherited*/ init!(object value: AnyObject!, inContext context: JSContext!)
  /*not inherited*/ init!(bool value: Bool, inContext context: JSContext!)
  /*not inherited*/ init!(double value: Double, inContext context: JSContext!)
  /*not inherited*/ init!(int32 value: Int32, inContext context: JSContext!)
  /*not inherited*/ init!(UInt32 value: UInt32, inContext context: JSContext!)
  /*not inherited*/ init!(newObjectInContext context: JSContext!)
  /*not inherited*/ init!(newArrayInContext context: JSContext!)
  /*not inherited*/ init!(newRegularExpressionFromPattern pattern: String!, flags flags: String!, inContext context: JSContext!)
  /*not inherited*/ init!(newErrorFromMessage message: String!, inContext context: JSContext!)
  /*not inherited*/ init!(nullInContext context: JSContext!)
  /*not inherited*/ init!(undefinedInContext context: JSContext!)
  func toObject() -> AnyObject!
  func toObjectOfClass(_ expectedClass: AnyClass!) -> AnyObject!
  func toBool() -> Bool
  func toDouble() -> Double
  func toInt32() -> Int32
  func toUInt32() -> UInt32
  func toNumber() -> NSNumber!
  func toString() -> String!
  func toDate() -> NSDate!
  func toArray() -> [AnyObject]!
  func toDictionary() -> [NSObject : AnyObject]!
  func valueForProperty(_ property: String!) -> JSValue!
  func setValue(_ value: AnyObject!, forProperty property: String!)
  func deleteProperty(_ property: String!) -> Bool
  func hasProperty(_ property: String!) -> Bool
  func defineProperty(_ property: String!, descriptor descriptor: AnyObject!)
  func valueAtIndex(_ index: Int) -> JSValue!
  func setValue(_ value: AnyObject!, atIndex index: Int)
  var isUndefined: Bool { get }
  var isNull: Bool { get }
  var isBoolean: Bool { get }
  var isNumber: Bool { get }
  var isString: Bool { get }
  var isObject: Bool { get }
  @available(iOS 9.0, *)
  var isArray: Bool { get }
  @available(iOS 9.0, *)
  var isDate: Bool { get }
  func isEqualToObject(_ value: AnyObject!) -> Bool
  func isEqualWithTypeCoercionToObject(_ value: AnyObject!) -> Bool
  func isInstanceOf(_ value: AnyObject!) -> Bool
  func callWithArguments(_ arguments: [AnyObject]!) -> JSValue!
  func constructWithArguments(_ arguments: [AnyObject]!) -> JSValue!
  func invokeMethod(_ method: String!, withArguments arguments: [AnyObject]!) -> JSValue!
}
extension JSValue {
  /*not inherited*/ init!(point point: CGPoint, inContext context: JSContext!)
  /*not inherited*/ init!(range range: NSRange, inContext context: JSContext!)
  /*not inherited*/ init!(rect rect: CGRect, inContext context: JSContext!)
  /*not inherited*/ init!(size size: CGSize, inContext context: JSContext!)
  func toPoint() -> CGPoint
  func toRange() -> NSRange
  func toRect() -> CGRect
  func toSize() -> CGSize
}
extension JSValue {
  func objectForKeyedSubscript(_ key: AnyObject!) -> JSValue!
  func objectAtIndexedSubscript(_ index: Int) -> JSValue!
  func setObject(_ object: AnyObject!, forKeyedSubscript key: protocol<NSCopying, NSObjectProtocol>!)
  func setObject(_ object: AnyObject!, atIndexedSubscript index: Int)
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
