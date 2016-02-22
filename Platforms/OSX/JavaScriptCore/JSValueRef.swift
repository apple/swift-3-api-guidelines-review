
struct JSType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue rawValue: UInt32)
  var rawValue: UInt32
}
var kJSTypeUndefined: JSType { get }
var kJSTypeNull: JSType { get }
var kJSTypeBoolean: JSType { get }
var kJSTypeNumber: JSType { get }
var kJSTypeString: JSType { get }
var kJSTypeObject: JSType { get }
func JSValueGetType(_ ctx: JSContextRef, _ _: JSValueRef) -> JSType
func JSValueIsUndefined(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsNull(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsBoolean(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsNumber(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsString(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsObject(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsObjectOfClass(_ ctx: JSContextRef, _ value: JSValueRef, _ jsClass: JSClassRef) -> Bool
@available(OSX 10.11, *)
func JSValueIsArray(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
@available(OSX 10.11, *)
func JSValueIsDate(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueIsEqual(_ ctx: JSContextRef, _ a: JSValueRef, _ b: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSValueIsStrictEqual(_ ctx: JSContextRef, _ a: JSValueRef, _ b: JSValueRef) -> Bool
func JSValueIsInstanceOfConstructor(_ ctx: JSContextRef, _ value: JSValueRef, _ constructor: JSObjectRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSValueMakeUndefined(_ ctx: JSContextRef) -> JSValueRef
func JSValueMakeNull(_ ctx: JSContextRef) -> JSValueRef
func JSValueMakeBoolean(_ ctx: JSContextRef, _ boolean: Bool) -> JSValueRef
func JSValueMakeNumber(_ ctx: JSContextRef, _ number: Double) -> JSValueRef
func JSValueMakeString(_ ctx: JSContextRef, _ string: JSStringRef) -> JSValueRef
@available(OSX 10.7, *)
func JSValueMakeFromJSONString(_ ctx: JSContextRef, _ string: JSStringRef) -> JSValueRef
@available(OSX 10.7, *)
func JSValueCreateJSONString(_ ctx: JSContextRef, _ value: JSValueRef, _ indent: UInt32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSStringRef
func JSValueToBoolean(_ ctx: JSContextRef, _ value: JSValueRef) -> Bool
func JSValueToNumber(_ ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Double
func JSValueToStringCopy(_ ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSStringRef
func JSValueToObject(_ ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSValueProtect(_ ctx: JSContextRef, _ value: JSValueRef)
func JSValueUnprotect(_ ctx: JSContextRef, _ value: JSValueRef)
