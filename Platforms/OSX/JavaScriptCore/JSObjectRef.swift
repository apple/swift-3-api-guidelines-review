
var kJSPropertyAttributeNone: Int { get }
var kJSPropertyAttributeReadOnly: Int { get }
var kJSPropertyAttributeDontEnum: Int { get }
var kJSPropertyAttributeDontDelete: Int { get }
typealias JSPropertyAttributes = UInt32
var kJSClassAttributeNone: Int { get }
var kJSClassAttributeNoAutomaticPrototype: Int { get }
typealias JSClassAttributes = UInt32
typealias JSObjectInitializeCallback = @convention(c) (JSContextRef, JSObjectRef) -> Void
typealias JSObjectFinalizeCallback = @convention(c) (JSObjectRef) -> Void
typealias JSObjectHasPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef) -> Bool
typealias JSObjectGetPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, UnsafeMutablePointer<JSValueRef>) -> JSValueRef
typealias JSObjectSetPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, JSValueRef, UnsafeMutablePointer<JSValueRef>) -> Bool
typealias JSObjectDeletePropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, UnsafeMutablePointer<JSValueRef>) -> Bool
typealias JSObjectGetPropertyNamesCallback = @convention(c) (JSContextRef, JSObjectRef, JSPropertyNameAccumulatorRef) -> Void
typealias JSObjectCallAsFunctionCallback = @convention(c) (JSContextRef, JSObjectRef, JSObjectRef, Int, UnsafePointer<JSValueRef>, UnsafeMutablePointer<JSValueRef>) -> JSValueRef
typealias JSObjectCallAsConstructorCallback = @convention(c) (JSContextRef, JSObjectRef, Int, UnsafePointer<JSValueRef>, UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
typealias JSObjectHasInstanceCallback = @convention(c) (JSContextRef, JSObjectRef, JSValueRef, UnsafeMutablePointer<JSValueRef>) -> Bool
typealias JSObjectConvertToTypeCallback = @convention(c) (JSContextRef, JSObjectRef, JSType, UnsafeMutablePointer<JSValueRef>) -> JSValueRef
struct JSStaticValue {
  var name: UnsafePointer<Int8>
  var getProperty: JSObjectGetPropertyCallback!
  var setProperty: JSObjectSetPropertyCallback!
  var attributes: JSPropertyAttributes
  init()
  init(name: UnsafePointer<Int8>, getProperty: JSObjectGetPropertyCallback!, setProperty: JSObjectSetPropertyCallback!, attributes: JSPropertyAttributes)
}
struct JSStaticFunction {
  var name: UnsafePointer<Int8>
  var callAsFunction: JSObjectCallAsFunctionCallback!
  var attributes: JSPropertyAttributes
  init()
  init(name: UnsafePointer<Int8>, callAsFunction: JSObjectCallAsFunctionCallback!, attributes: JSPropertyAttributes)
}
struct JSClassDefinition {
  var version: Int32
  var attributes: JSClassAttributes
  var className: UnsafePointer<Int8>
  var parentClass: JSClassRef
  var staticValues: UnsafePointer<JSStaticValue>
  var staticFunctions: UnsafePointer<JSStaticFunction>
  var initialize: JSObjectInitializeCallback!
  var finalize: JSObjectFinalizeCallback!
  var hasProperty: JSObjectHasPropertyCallback!
  var getProperty: JSObjectGetPropertyCallback!
  var setProperty: JSObjectSetPropertyCallback!
  var deleteProperty: JSObjectDeletePropertyCallback!
  var getPropertyNames: JSObjectGetPropertyNamesCallback!
  var callAsFunction: JSObjectCallAsFunctionCallback!
  var callAsConstructor: JSObjectCallAsConstructorCallback!
  var hasInstance: JSObjectHasInstanceCallback!
  var convertToType: JSObjectConvertToTypeCallback!
  init()
  init(version: Int32, attributes: JSClassAttributes, className: UnsafePointer<Int8>, parentClass: JSClassRef, staticValues: UnsafePointer<JSStaticValue>, staticFunctions: UnsafePointer<JSStaticFunction>, initialize: JSObjectInitializeCallback!, finalize: JSObjectFinalizeCallback!, hasProperty: JSObjectHasPropertyCallback!, getProperty: JSObjectGetPropertyCallback!, setProperty: JSObjectSetPropertyCallback!, deleteProperty: JSObjectDeletePropertyCallback!, getPropertyNames: JSObjectGetPropertyNamesCallback!, callAsFunction: JSObjectCallAsFunctionCallback!, callAsConstructor: JSObjectCallAsConstructorCallback!, hasInstance: JSObjectHasInstanceCallback!, convertToType: JSObjectConvertToTypeCallback!)
}
let kJSClassDefinitionEmpty: JSClassDefinition
func JSClassCreate(definition: UnsafePointer<JSClassDefinition>) -> JSClassRef
func JSClassRetain(jsClass: JSClassRef) -> JSClassRef
func JSClassRelease(jsClass: JSClassRef)
func JSObjectMake(ctx: JSContextRef, _ jsClass: JSClassRef, _ data: UnsafeMutablePointer<Void>) -> JSObjectRef
func JSObjectMakeFunctionWithCallback(ctx: JSContextRef, _ name: JSStringRef, _ callAsFunction: JSObjectCallAsFunctionCallback!) -> JSObjectRef
func JSObjectMakeConstructor(ctx: JSContextRef, _ jsClass: JSClassRef, _ callAsConstructor: JSObjectCallAsConstructorCallback!) -> JSObjectRef
@available(OSX 10.6, *)
func JSObjectMakeArray(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
@available(OSX 10.6, *)
func JSObjectMakeDate(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
@available(OSX 10.6, *)
func JSObjectMakeError(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
@available(OSX 10.6, *)
func JSObjectMakeRegExp(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectMakeFunction(ctx: JSContextRef, _ name: JSStringRef, _ parameterCount: UInt32, _ parameterNames: UnsafePointer<JSStringRef>, _ body: JSStringRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectGetPrototype(ctx: JSContextRef, _ object: JSObjectRef) -> JSValueRef
func JSObjectSetPrototype(ctx: JSContextRef, _ object: JSObjectRef, _ value: JSValueRef)
func JSObjectHasProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef) -> Bool
func JSObjectGetProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef
func JSObjectSetProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ value: JSValueRef, _ attributes: JSPropertyAttributes, _ exception: UnsafeMutablePointer<JSValueRef>)
func JSObjectDeleteProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSObjectGetPropertyAtIndex(ctx: JSContextRef, _ object: JSObjectRef, _ propertyIndex: UInt32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef
func JSObjectSetPropertyAtIndex(ctx: JSContextRef, _ object: JSObjectRef, _ propertyIndex: UInt32, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>)
func JSObjectGetPrivate(object: JSObjectRef) -> UnsafeMutablePointer<Void>
func JSObjectSetPrivate(object: JSObjectRef, _ data: UnsafeMutablePointer<Void>) -> Bool
func JSObjectIsFunction(ctx: JSContextRef, _ object: JSObjectRef) -> Bool
func JSObjectCallAsFunction(ctx: JSContextRef, _ object: JSObjectRef, _ thisObject: JSObjectRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef
func JSObjectIsConstructor(ctx: JSContextRef, _ object: JSObjectRef) -> Bool
func JSObjectCallAsConstructor(ctx: JSContextRef, _ object: JSObjectRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef
func JSObjectCopyPropertyNames(ctx: JSContextRef, _ object: JSObjectRef) -> JSPropertyNameArrayRef
func JSPropertyNameArrayRetain(array: JSPropertyNameArrayRef) -> JSPropertyNameArrayRef
func JSPropertyNameArrayRelease(array: JSPropertyNameArrayRef)
func JSPropertyNameArrayGetCount(array: JSPropertyNameArrayRef) -> Int
func JSPropertyNameArrayGetNameAtIndex(array: JSPropertyNameArrayRef, _ index: Int) -> JSStringRef
func JSPropertyNameAccumulatorAddName(accumulator: JSPropertyNameAccumulatorRef, _ propertyName: JSStringRef)
