
struct JSType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kJSTypeUndefined: JSType { get }
var kJSTypeNull: JSType { get }
var kJSTypeBoolean: JSType { get }
var kJSTypeNumber: JSType { get }
var kJSTypeString: JSType { get }
var kJSTypeObject: JSType { get }
func JSValueGetType(ctx: JSContextRef, _: JSValueRef) -> JSType
func JSValueIsUndefined(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsNull(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsBoolean(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsNumber(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsString(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsObject(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsObjectOfClass(ctx: JSContextRef, _ value: JSValueRef, _ jsClass: JSClassRef) -> Bool
@available(tvOS 9.0, *)
func JSValueIsArray(ctx: JSContextRef, _ value: JSValueRef) -> Bool
@available(tvOS 9.0, *)
func JSValueIsDate(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsEqual(ctx: JSContextRef, _ a: JSValueRef, _ b: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSValueIsStrictEqual(ctx: JSContextRef, _ a: JSValueRef, _ b: JSValueRef) -> Bool
func JSValueIsInstanceOfConstructor(ctx: JSContextRef, _ value: JSValueRef, _ constructor: JSObjectRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSValueMakeUndefined(ctx: JSContextRef) -> JSValueRef
func JSValueMakeNull(ctx: JSContextRef) -> JSValueRef
func JSValueMakeBoolean(ctx: JSContextRef, _ boolean: Bool) -> JSValueRef
func JSValueMakeNumber(ctx: JSContextRef, _ number: Double) -> JSValueRef
func JSValueMakeString(ctx: JSContextRef, _ string: JSStringRef) -> JSValueRef
@available(tvOS 7.0, *)
func JSValueMakeFromJSONString(ctx: JSContextRef, _ string: JSStringRef) -> JSValueRef
@available(tvOS 7.0, *)
func JSValueCreateJSONString(ctx: JSContextRef, _ value: JSValueRef, _ indent: UInt32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSStringRef
func JSValueToBoolean(ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueToNumber(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Double
func JSValueToStringCopy(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSStringRef
func JSValueToObject(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSValueProtect(ctx: JSContextRef, _ value: JSValueRef)
func JSValueUnprotect(ctx: JSContextRef, _ value: JSValueRef)
