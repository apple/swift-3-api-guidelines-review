

/*! @typedef JSContextGroupRef A group that associates JavaScript contexts with one another. Contexts in the same group may share and exchange JavaScript objects. */
typealias JSContextGroupRef = COpaquePointer

/*! @typedef JSContextRef A JavaScript execution context. Holds the global object and other execution state. */
typealias JSContextRef = COpaquePointer

/*! @typedef JSGlobalContextRef A global JavaScript execution context. A JSGlobalContext is a JSContext. */
typealias JSGlobalContextRef = COpaquePointer

/*! @typedef JSStringRef A UTF16 character buffer. The fundamental string representation in JavaScript. */
typealias JSStringRef = COpaquePointer

/*! @typedef JSClassRef A JavaScript class. Used with JSObjectMake to construct objects with custom behavior. */
typealias JSClassRef = COpaquePointer

/*! @typedef JSPropertyNameArrayRef An array of JavaScript property names. */
typealias JSPropertyNameArrayRef = COpaquePointer

/*! @typedef JSPropertyNameAccumulatorRef An ordered set used to collect the names of a JavaScript object's properties. */
typealias JSPropertyNameAccumulatorRef = COpaquePointer

/*! @typedef JSValueRef A JavaScript value. The base type for all JavaScript values, and polymorphic functions on them. */
typealias JSValueRef = COpaquePointer

/*! @typedef JSObjectRef A JavaScript object. A JSObject is a JSValue. */
typealias JSObjectRef = COpaquePointer

/*!
@function JSEvaluateScript
@abstract Evaluates a string of JavaScript.
@param ctx The execution context to use.
@param script A JSString containing the script to evaluate.
@param thisObject The object to use as "this," or NULL to use the global object as "this."
@param sourceURL A JSString containing a URL for the script's source file. This is used by debuggers and when reporting exceptions. Pass NULL if you do not care to include source file information.
@param startingLineNumber An integer value specifying the script's starting line number in the file located at sourceURL. This is only used when reporting exceptions. The value is one-based, so the first line is line 1 and invalid values are clamped to 1.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result The JSValue that results from evaluating script, or NULL if an exception is thrown.
*/
func JSEvaluateScript(ctx: JSContextRef, _ script: JSStringRef, _ thisObject: JSObjectRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef

/*!
@function JSCheckScriptSyntax
@abstract Checks for syntax errors in a string of JavaScript.
@param ctx The execution context to use.
@param script A JSString containing the script to check for syntax errors.
@param sourceURL A JSString containing a URL for the script's source file. This is only used when reporting exceptions. Pass NULL if you do not care to include source file information in exceptions.
@param startingLineNumber An integer value specifying the script's starting line number in the file located at sourceURL. This is only used when reporting exceptions. The value is one-based, so the first line is line 1 and invalid values are clamped to 1.
@param exception A pointer to a JSValueRef in which to store a syntax error exception, if any. Pass NULL if you do not care to store a syntax error exception.
@result true if the script is syntactically correct, otherwise false.
*/
func JSCheckScriptSyntax(ctx: JSContextRef, _ script: JSStringRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool

/*!
@function JSGarbageCollect
@abstract Performs a JavaScript garbage collection.
@param ctx The execution context to use.
@discussion JavaScript values that are on the machine stack, in a register,
 protected by JSValueProtect, set as the global object of an execution context,
 or reachable from any such value will not be collected.

 During JavaScript execution, you are not required to call this function; the
 JavaScript engine will garbage collect as needed. JavaScript values created
 within a context group are automatically destroyed when the last reference
 to the context group is released.
*/
func JSGarbageCollect(ctx: JSContextRef)

/*!
@interface
@discussion An instance of JSContext represents a JavaScript execution environment. All
 JavaScript execution takes place within a context.
 JSContext is also used to manage the life-cycle of objects within the
 JavaScript virtual machine. Every instance of JSValue is associated with a
 JSContext via a strong reference. The JSValue will keep the JSContext it
 references alive so long as the JSValue remains alive. When all of the JSValues
 that reference a particular JSContext have been deallocated the JSContext
 will be deallocated unless it has been previously retained.
*/
@available(tvOS 7.0, *)
class JSContext : NSObject {

  /*!
  @methodgroup Creating New JSContexts
  */
  /*!
  @method
  @abstract Create a JSContext.
  @result The new context.
  */
  init!()

  /*!
  @method
  @abstract Create a JSContext in the specified virtual machine.
  @param virtualMachine The JSVirtualMachine in which the context will be created.
  @result The new context.
  */
  init!(virtualMachine: JSVirtualMachine!)

  /*!
  @methodgroup Evaluating Scripts
  */
  /*!
  @method
  @abstract Evaluate a string of JavaScript code.
  @param script A string containing the JavaScript code to evaluate.
  @result The last value generated by the script.
  */
  func evaluateScript(script: String!) -> JSValue!

  /*!
  @method
  @abstract Evaluate a string of JavaScript code, with a URL for the script's source file.
  @param script A string containing the JavaScript code to evaluate.
  @param sourceURL A URL for the script's source file. Used by debuggers and when reporting exceptions. This parameter is informative only: it does not change the behavior of the script.
  @result The last value generated by the script.
  */
  @available(tvOS 8.0, *)
  func evaluateScript(script: String!, withSourceURL sourceURL: NSURL!) -> JSValue!

  /*!
  @methodgroup Callback Accessors
  */
  /*!
  @method
  @abstract Get the JSContext that is currently executing.
  @discussion This method may be called from within an Objective-C block or method invoked
   as a callback from JavaScript to retrieve the callback's context. Outside of
   a callback from JavaScript this method will return nil.
  @result The currently executing JSContext or nil if there isn't one.
  */
  class func current() -> JSContext!

  /*!
  @method
  @abstract Get the JavaScript function that is currently executing.
  @discussion This method may be called from within an Objective-C block or method invoked
   as a callback from JavaScript to retrieve the callback's context. Outside of
   a callback from JavaScript this method will return nil.
  @result The currently executing JavaScript function or nil if there isn't one.
  */
  @available(tvOS 8.0, *)
  class func currentCallee() -> JSValue!

  /*!
  @method
  @abstract Get the <code>this</code> value of the currently executing method.
  @discussion This method may be called from within an Objective-C block or method invoked
   as a callback from JavaScript to retrieve the callback's this value. Outside
   of a callback from JavaScript this method will return nil.
  @result The current <code>this</code> value or nil if there isn't one.
  */
  class func currentThis() -> JSValue!

  /*!
  @method
  @abstract Get the arguments to the current callback.
  @discussion This method may be called from within an Objective-C block or method invoked
   as a callback from JavaScript to retrieve the callback's arguments, objects
   in the returned array are instances of JSValue. Outside of a callback from
   JavaScript this method will return nil.
  @result An NSArray of the arguments nil if there is no current callback.
  */
  class func currentArguments() -> [AnyObject]!

  /*!
  @methodgroup Global Properties
  */
  /*!
  @property
  @abstract Get the global object of the context.
  @discussion This method retrieves the global object of the JavaScript execution context.
   Instances of JSContext originating from WebKit will return a reference to the
   WindowProxy object.
  @result The global object.
  */
  var globalObject: JSValue! { get }

  /*!
  @property
  @discussion The <code>exception</code> property may be used to throw an exception to JavaScript.
   
   Before a callback is made from JavaScript to an Objective-C block or method,
   the prior value of the exception property will be preserved and the property
   will be set to nil. After the callback has completed the new value of the
   exception property will be read, and prior value restored. If the new value
   of exception is not nil, the callback will result in that value being thrown.
   
   This property may also be used to check for uncaught exceptions arising from
   API function calls (since the default behaviour of <code>exceptionHandler</code> is to
   assign an uncaught exception to this property).
  
   If a JSValue originating from a different JSVirtualMachine than this context
   is assigned to this property, an Objective-C exception will be raised.
  */
  var exception: JSValue!

  /*!
  @property
  @discussion If a call to an API function results in an uncaught JavaScript exception, the
   <code>exceptionHandler</code> block will be invoked. The default implementation for the
   exception handler will store the exception to the exception property on
   context. As a consequence the default behaviour is for unhandled exceptions
   occurring within a callback from JavaScript to be rethrown upon return.
   Setting this value to nil will result in all uncaught exceptions thrown from
   the API being silently consumed.
  */
  var exceptionHandler: ((JSContext!, JSValue!) -> Void)!

  /*!
  @property
  @discussion All instances of JSContext are associated with a single JSVirtualMachine. The
   virtual machine provides an "object space" or set of execution resources.
  */
  var virtualMachine: JSVirtualMachine! { get }

  /*!
  @property
  @discussion Name of the JSContext. Exposed when remote debugging the context.
  */
  @available(tvOS 8.0, *)
  var name: String!
}
extension JSContext {

  /*!
  method
  @abstract Get a particular property on the global object.
  @param key
  @result The JSValue for the global object's property.
  */
  func objectForKeyedSubscript(key: AnyObject!) -> JSValue!

  /*!
  method
  @abstract Set a particular property on the global object.
  @param object
  @param key
  */
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<NSCopying, NSObjectProtocol>!)
}
extension JSContext {

  /*!
  @method
  @abstract Create a JSContext, wrapping its C API counterpart.
  @param jsGlobalContextRef
  @result The JSContext equivalent of the provided JSGlobalContextRef.
  */
  /*not inherited*/ init!(jsGlobalContextRef: JSGlobalContextRef)

  /*!
  @property
  @abstract Get the C API counterpart wrapped by a JSContext.
  @result The C API equivalent of this JSContext.
  */
  var jsGlobalContextRef: JSGlobalContextRef { get }
}

/*!
@function
@abstract Creates a JavaScript context group.
@discussion A JSContextGroup associates JavaScript contexts with one another.
 Contexts in the same group may share and exchange JavaScript objects. Sharing and/or exchanging
 JavaScript objects between contexts in different groups will produce undefined behavior.
 When objects from the same context group are used in multiple threads, explicit
 synchronization is required.
@result The created JSContextGroup.
*/
@available(tvOS 7.0, *)
func JSContextGroupCreate() -> JSContextGroupRef

/*!
@function
@abstract Retains a JavaScript context group.
@param group The JSContextGroup to retain.
@result A JSContextGroup that is the same as group.
*/
@available(tvOS 7.0, *)
func JSContextGroupRetain(group: JSContextGroupRef) -> JSContextGroupRef

/*!
@function
@abstract Releases a JavaScript context group.
@param group The JSContextGroup to release.
*/
@available(tvOS 7.0, *)
func JSContextGroupRelease(group: JSContextGroupRef)

/*!
@function
@abstract Creates a global JavaScript execution context.
@discussion JSGlobalContextCreate allocates a global object and populates it with all the
 built-in JavaScript objects, such as Object, Function, String, and Array.

 In WebKit version 4.0 and later, the context is created in a unique context group.
 Therefore, scripts may execute in it concurrently with scripts executing in other contexts.
 However, you may not use values created in the context in other contexts.
@param globalObjectClass The class to use when creating the global object. Pass 
 NULL to use the default object class.
@result A JSGlobalContext with a global object of class globalObjectClass.
*/
@available(tvOS 7.0, *)
func JSGlobalContextCreate(globalObjectClass: JSClassRef) -> JSGlobalContextRef

/*!
@function
@abstract Creates a global JavaScript execution context in the context group provided.
@discussion JSGlobalContextCreateInGroup allocates a global object and populates it with
 all the built-in JavaScript objects, such as Object, Function, String, and Array.
@param globalObjectClass The class to use when creating the global object. Pass
 NULL to use the default object class.
@param group The context group to use. The created global context retains the group.
 Pass NULL to create a unique group for the context.
@result A JSGlobalContext with a global object of class globalObjectClass and a context
 group equal to group.
*/
@available(tvOS 7.0, *)
func JSGlobalContextCreateInGroup(group: JSContextGroupRef, _ globalObjectClass: JSClassRef) -> JSGlobalContextRef

/*!
@function
@abstract Retains a global JavaScript execution context.
@param ctx The JSGlobalContext to retain.
@result A JSGlobalContext that is the same as ctx.
*/
func JSGlobalContextRetain(ctx: JSGlobalContextRef) -> JSGlobalContextRef

/*!
@function
@abstract Releases a global JavaScript execution context.
@param ctx The JSGlobalContext to release.
*/
func JSGlobalContextRelease(ctx: JSGlobalContextRef)

/*!
@function
@abstract Gets the global object of a JavaScript execution context.
@param ctx The JSContext whose global object you want to get.
@result ctx's global object.
*/
func JSContextGetGlobalObject(ctx: JSContextRef) -> JSObjectRef

/*!
@function
@abstract Gets the context group to which a JavaScript execution context belongs.
@param ctx The JSContext whose group you want to get.
@result ctx's group.
*/
@available(tvOS 7.0, *)
func JSContextGetGroup(ctx: JSContextRef) -> JSContextGroupRef

/*!
@function
@abstract Gets the global context of a JavaScript execution context.
@param ctx The JSContext whose global context you want to get.
@result ctx's global context.
*/
@available(tvOS 7.0, *)
func JSContextGetGlobalContext(ctx: JSContextRef) -> JSGlobalContextRef

/*!
@function
@abstract Gets a copy of the name of a context.
@param ctx The JSGlobalContext whose name you want to get.
@result The name for ctx.
@discussion A JSGlobalContext's name is exposed for remote debugging to make it
easier to identify the context you would like to attach to.
*/
@available(tvOS 8.0, *)
func JSGlobalContextCopyName(ctx: JSGlobalContextRef) -> JSStringRef

/*!
@function
@abstract Sets the remote debugging name for a context.
@param ctx The JSGlobalContext that you want to name.
@param name The remote debugging name to set on ctx.
*/
@available(tvOS 8.0, *)
func JSGlobalContextSetName(ctx: JSGlobalContextRef, _ name: JSStringRef)

/*!
@protocol
@abstract JSExport provides a declarative way to export Objective-C instance methods,
 class methods, and properties to JavaScript code.

@discussion When a JavaScript value is created from an instance of an Objective-C class
 for which no copying conversion is specified a JavaScript wrapper object will
 be created.

 In JavaScript, inheritance is supported via a chain of prototype objects, and
 for each Objective-C class (and per JSContext) an object appropriate for use
 as a prototype will be provided. For the class NSObject the prototype object
 will be the JavaScript context's Object Prototype. For all other Objective-C
 classes a Prototype object will be created. The Prototype object for a given
 Objective-C class will have its internal [Prototype] property set to point to
 the Prototype object of the Objective-C class's superclass. As such the
 prototype chain for a JavaScript wrapper object will reflect the wrapped
 Objective-C type's inheritance hierarchy.

 In addition to the Prototype object a JavaScript Constructor object will also
 be produced for each Objective-C class. The Constructor object has a property
 named 'prototype' that references the Prototype object, and the Prototype
 object has a property named 'constructor' that references the Constructor.
 The Constructor object is not callable.

 By default no methods or properties of the Objective-C class will be exposed
 to JavaScript; however methods and properties may explicitly be exported.
 For each protocol that a class conforms to, if the protocol incorporates the
 protocol JSExport, then the protocol will be interpreted as a list of methods
 and properties to be exported to JavaScript.

 For each instance method being exported a corresponding JavaScript function
 will be assigned as a property of the Prototype object. For each Objective-C
 property being exported a JavaScript accessor property will be created on the
 Prototype. For each class method exported a JavaScript function will be
 created on the Constructor object. For example:

<pre>
@textblock
    @protocol MyClassJavaScriptMethods <JSExport>
    - (void)foo;
    @end

    @interface MyClass : NSObject <MyClassJavaScriptMethods>
    - (void)foo;
    - (void)bar;
    @end
@/textblock
</pre>

 Data properties that are created on the prototype or constructor objects have
 the attributes: <code>writable:true</code>, <code>enumerable:false</code>, <code>configurable:true</code>. 
 Accessor properties have the attributes: <code>enumerable:false</code> and <code>configurable:true</code>.

 If an instance of <code>MyClass</code> is converted to a JavaScript value, the resulting
 wrapper object will (via its prototype) export the method <code>foo</code> to JavaScript,
 since the class conforms to the <code>MyClassJavaScriptMethods</code> protocol, and this
 protocol incorporates <code>JSExport</code>. <code>bar</code> will not be exported.

 Properties, arguments, and return values of the following types are
 supported:

 Primitive numbers: signed values of up to 32-bits are converted in a manner
    consistent with valueWithInt32/toInt32, unsigned values of up to 32-bits
    are converted in a manner consistent with valueWithUInt32/toUInt32, all
    other numeric values are converted consistently with valueWithDouble/
    toDouble.

 BOOL: values are converted consistently with valueWithBool/toBool.

 id: values are converted consistently with valueWithObject/toObject.

 Objective-C Class: - where the type is a pointer to a specified Objective-C
    class, conversion is consistent with valueWithObjectOfClass/toObject.

 struct types: C struct types are supported, where JSValue provides support
    for the given type. Support is built in for CGPoint, NSRange, CGRect, and
    CGSize.

 block types: Blocks can only be passed if they had been converted 
    successfully by valueWithObject/toObject previously.

 For any interface that conforms to JSExport the normal copying conversion for
 built in types will be inhibited - so, for example, if an instance that
 derives from NSString but conforms to JSExport is passed to valueWithObject:
 then a wrapper object for the Objective-C object will be returned rather than
 a JavaScript string primitive.
*/
protocol JSExport {
}

/*!
@interface
@discussion JSManagedValue represents a "conditionally retained" JSValue. 
 "Conditionally retained" means that as long as either the JSManagedValue's 
 JavaScript value is reachable through the JavaScript object graph
 or the JSManagedValue object is reachable through the external Objective-C 
 object graph as reported to the JSVirtualMachine using 
 addManagedReference:withOwner:, the corresponding JavaScript value will 
 be retained. However, if neither of these conditions are true, the 
 corresponding JSValue will be released and set to nil.

 The primary use case for JSManagedValue is for safely referencing JSValues 
 from the Objective-C heap. It is incorrect to store a JSValue into an 
 Objective-C heap object, as this can very easily create a reference cycle, 
 keeping the entire JSContext alive.
*/
@available(tvOS 7.0, *)
class JSManagedValue : NSObject {
  @available(tvOS 8.0, *)
  /*not inherited*/ init!(value: JSValue!, andOwner owner: AnyObject!)

  /*!
  @method
  @abstract Create a JSManagedValue.
  @param value
  @result The new JSManagedValue.
  */
  init!(value: JSValue!)

  /*!
  @property
  @abstract Get the JSValue from the JSManagedValue.
  @result The corresponding JSValue for this JSManagedValue or 
   nil if the JSValue has been collected.
  */
  var value: JSValue! { get }
  init()
}
var kJSPropertyAttributeNone: Int { get }
var kJSPropertyAttributeReadOnly: Int { get }
var kJSPropertyAttributeDontEnum: Int { get }
var kJSPropertyAttributeDontDelete: Int { get }

/*! 
@typedef JSPropertyAttributes
@abstract A set of JSPropertyAttributes. Combine multiple attributes by logically ORing them together.
*/
typealias JSPropertyAttributes = UInt32
var kJSClassAttributeNone: Int { get }
var kJSClassAttributeNoAutomaticPrototype: Int { get }

/*! 
@typedef JSClassAttributes
@abstract A set of JSClassAttributes. Combine multiple attributes by logically ORing them together.
*/
typealias JSClassAttributes = UInt32

/*! 
@typedef JSObjectInitializeCallback
@abstract The callback invoked when an object is first created.
@param ctx The execution context to use.
@param object The JSObject being created.
@discussion If you named your function Initialize, you would declare it like this:

void Initialize(JSContextRef ctx, JSObjectRef object);

Unlike the other object callbacks, the initialize callback is called on the least
derived class (the parent class) first, and the most derived class last.
*/
typealias JSObjectInitializeCallback = @convention(c) (JSContextRef, JSObjectRef) -> Void

/*! 
@typedef JSObjectFinalizeCallback
@abstract The callback invoked when an object is finalized (prepared for garbage collection). An object may be finalized on any thread.
@param object The JSObject being finalized.
@discussion If you named your function Finalize, you would declare it like this:

void Finalize(JSObjectRef object);

The finalize callback is called on the most derived class first, and the least 
derived class (the parent class) last.

You must not call any function that may cause a garbage collection or an allocation
of a garbage collected object from within a JSObjectFinalizeCallback. This includes
all functions that have a JSContextRef parameter.
*/
typealias JSObjectFinalizeCallback = @convention(c) (JSObjectRef) -> Void

/*! 
@typedef JSObjectHasPropertyCallback
@abstract The callback invoked when determining whether an object has a property.
@param ctx The execution context to use.
@param object The JSObject to search for the property.
@param propertyName A JSString containing the name of the property look up.
@result true if object has the property, otherwise false.
@discussion If you named your function HasProperty, you would declare it like this:

bool HasProperty(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName);

If this function returns false, the hasProperty request forwards to object's statically declared properties, then its parent class chain (which includes the default object class), then its prototype chain.

This callback enables optimization in cases where only a property's existence needs to be known, not its value, and computing its value would be expensive.

If this callback is NULL, the getProperty callback will be used to service hasProperty requests.
*/
typealias JSObjectHasPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef) -> Bool

/*! 
@typedef JSObjectGetPropertyCallback
@abstract The callback invoked when getting a property's value.
@param ctx The execution context to use.
@param object The JSObject to search for the property.
@param propertyName A JSString containing the name of the property to get.
@param exception A pointer to a JSValueRef in which to return an exception, if any.
@result The property's value if object has the property, otherwise NULL.
@discussion If you named your function GetProperty, you would declare it like this:

JSValueRef GetProperty(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef* exception);

If this function returns NULL, the get request forwards to object's statically declared properties, then its parent class chain (which includes the default object class), then its prototype chain.
*/
typealias JSObjectGetPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, UnsafeMutablePointer<JSValueRef>) -> JSValueRef

/*! 
@typedef JSObjectSetPropertyCallback
@abstract The callback invoked when setting a property's value.
@param ctx The execution context to use.
@param object The JSObject on which to set the property's value.
@param propertyName A JSString containing the name of the property to set.
@param value A JSValue to use as the property's value.
@param exception A pointer to a JSValueRef in which to return an exception, if any.
@result true if the property was set, otherwise false.
@discussion If you named your function SetProperty, you would declare it like this:

bool SetProperty(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef value, JSValueRef* exception);

If this function returns false, the set request forwards to object's statically declared properties, then its parent class chain (which includes the default object class).
*/
typealias JSObjectSetPropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, JSValueRef, UnsafeMutablePointer<JSValueRef>) -> Bool

/*! 
@typedef JSObjectDeletePropertyCallback
@abstract The callback invoked when deleting a property.
@param ctx The execution context to use.
@param object The JSObject in which to delete the property.
@param propertyName A JSString containing the name of the property to delete.
@param exception A pointer to a JSValueRef in which to return an exception, if any.
@result true if propertyName was successfully deleted, otherwise false.
@discussion If you named your function DeleteProperty, you would declare it like this:

bool DeleteProperty(JSContextRef ctx, JSObjectRef object, JSStringRef propertyName, JSValueRef* exception);

If this function returns false, the delete request forwards to object's statically declared properties, then its parent class chain (which includes the default object class).
*/
typealias JSObjectDeletePropertyCallback = @convention(c) (JSContextRef, JSObjectRef, JSStringRef, UnsafeMutablePointer<JSValueRef>) -> Bool

/*! 
@typedef JSObjectGetPropertyNamesCallback
@abstract The callback invoked when collecting the names of an object's properties.
@param ctx The execution context to use.
@param object The JSObject whose property names are being collected.
@param accumulator A JavaScript property name accumulator in which to accumulate the names of object's properties.
@discussion If you named your function GetPropertyNames, you would declare it like this:

void GetPropertyNames(JSContextRef ctx, JSObjectRef object, JSPropertyNameAccumulatorRef propertyNames);

Property name accumulators are used by JSObjectCopyPropertyNames and JavaScript for...in loops. 

Use JSPropertyNameAccumulatorAddName to add property names to accumulator. A class's getPropertyNames callback only needs to provide the names of properties that the class vends through a custom getProperty or setProperty callback. Other properties, including statically declared properties, properties vended by other classes, and properties belonging to object's prototype, are added independently.
*/
typealias JSObjectGetPropertyNamesCallback = @convention(c) (JSContextRef, JSObjectRef, JSPropertyNameAccumulatorRef) -> Void

/*! 
@typedef JSObjectCallAsFunctionCallback
@abstract The callback invoked when an object is called as a function.
@param ctx The execution context to use.
@param function A JSObject that is the function being called.
@param thisObject A JSObject that is the 'this' variable in the function's scope.
@param argumentCount An integer count of the number of arguments in arguments.
@param arguments A JSValue array of the  arguments passed to the function.
@param exception A pointer to a JSValueRef in which to return an exception, if any.
@result A JSValue that is the function's return value.
@discussion If you named your function CallAsFunction, you would declare it like this:

JSValueRef CallAsFunction(JSContextRef ctx, JSObjectRef function, JSObjectRef thisObject, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception);

If your callback were invoked by the JavaScript expression 'myObject.myFunction()', function would be set to myFunction, and thisObject would be set to myObject.

If this callback is NULL, calling your object as a function will throw an exception.
*/
typealias JSObjectCallAsFunctionCallback = @convention(c) (JSContextRef, JSObjectRef, JSObjectRef, Int, UnsafePointer<JSValueRef>, UnsafeMutablePointer<JSValueRef>) -> JSValueRef

/*! 
@typedef JSObjectCallAsConstructorCallback
@abstract The callback invoked when an object is used as a constructor in a 'new' expression.
@param ctx The execution context to use.
@param constructor A JSObject that is the constructor being called.
@param argumentCount An integer count of the number of arguments in arguments.
@param arguments A JSValue array of the  arguments passed to the function.
@param exception A pointer to a JSValueRef in which to return an exception, if any.
@result A JSObject that is the constructor's return value.
@discussion If you named your function CallAsConstructor, you would declare it like this:

JSObjectRef CallAsConstructor(JSContextRef ctx, JSObjectRef constructor, size_t argumentCount, const JSValueRef arguments[], JSValueRef* exception);

If your callback were invoked by the JavaScript expression 'new myConstructor()', constructor would be set to myConstructor.

If this callback is NULL, using your object as a constructor in a 'new' expression will throw an exception.
*/
typealias JSObjectCallAsConstructorCallback = @convention(c) (JSContextRef, JSObjectRef, Int, UnsafePointer<JSValueRef>, UnsafeMutablePointer<JSValueRef>) -> JSObjectRef

/*! 
@typedef JSObjectHasInstanceCallback
@abstract hasInstance The callback invoked when an object is used as the target of an 'instanceof' expression.
@param ctx The execution context to use.
@param constructor The JSObject that is the target of the 'instanceof' expression.
@param possibleInstance The JSValue being tested to determine if it is an instance of constructor.
@param exception A pointer to a JSValueRef in which to return an exception, if any.
@result true if possibleInstance is an instance of constructor, otherwise false.
@discussion If you named your function HasInstance, you would declare it like this:

bool HasInstance(JSContextRef ctx, JSObjectRef constructor, JSValueRef possibleInstance, JSValueRef* exception);

If your callback were invoked by the JavaScript expression 'someValue instanceof myObject', constructor would be set to myObject and possibleInstance would be set to someValue.

If this callback is NULL, 'instanceof' expressions that target your object will return false.

Standard JavaScript practice calls for objects that implement the callAsConstructor callback to implement the hasInstance callback as well.
*/
typealias JSObjectHasInstanceCallback = @convention(c) (JSContextRef, JSObjectRef, JSValueRef, UnsafeMutablePointer<JSValueRef>) -> Bool

/*! 
@typedef JSObjectConvertToTypeCallback
@abstract The callback invoked when converting an object to a particular JavaScript type.
@param ctx The execution context to use.
@param object The JSObject to convert.
@param type A JSType specifying the JavaScript type to convert to.
@param exception A pointer to a JSValueRef in which to return an exception, if any.
@result The objects's converted value, or NULL if the object was not converted.
@discussion If you named your function ConvertToType, you would declare it like this:

JSValueRef ConvertToType(JSContextRef ctx, JSObjectRef object, JSType type, JSValueRef* exception);

If this function returns false, the conversion request forwards to object's parent class chain (which includes the default object class).

This function is only invoked when converting an object to number or string. An object converted to boolean is 'true.' An object converted to object is itself.
*/
typealias JSObjectConvertToTypeCallback = @convention(c) (JSContextRef, JSObjectRef, JSType, UnsafeMutablePointer<JSValueRef>) -> JSValueRef

/*! 
@struct JSStaticValue
@abstract This structure describes a statically declared value property.
@field name A null-terminated UTF8 string containing the property's name.
@field getProperty A JSObjectGetPropertyCallback to invoke when getting the property's value.
@field setProperty A JSObjectSetPropertyCallback to invoke when setting the property's value. May be NULL if the ReadOnly attribute is set.
@field attributes A logically ORed set of JSPropertyAttributes to give to the property.
*/
struct JSStaticValue {
  var name: UnsafePointer<Int8>
  var getProperty: JSObjectGetPropertyCallback!
  var setProperty: JSObjectSetPropertyCallback!
  var attributes: JSPropertyAttributes
  init()
  init(name: UnsafePointer<Int8>, getProperty: JSObjectGetPropertyCallback!, setProperty: JSObjectSetPropertyCallback!, attributes: JSPropertyAttributes)
}

/*! 
@struct JSStaticFunction
@abstract This structure describes a statically declared function property.
@field name A null-terminated UTF8 string containing the property's name.
@field callAsFunction A JSObjectCallAsFunctionCallback to invoke when the property is called as a function.
@field attributes A logically ORed set of JSPropertyAttributes to give to the property.
*/
struct JSStaticFunction {
  var name: UnsafePointer<Int8>
  var callAsFunction: JSObjectCallAsFunctionCallback!
  var attributes: JSPropertyAttributes
  init()
  init(name: UnsafePointer<Int8>, callAsFunction: JSObjectCallAsFunctionCallback!, attributes: JSPropertyAttributes)
}

/*!
@struct JSClassDefinition
@abstract This structure contains properties and callbacks that define a type of object. All fields other than the version field are optional. Any pointer may be NULL.
@field version The version number of this structure. The current version is 0.
@field attributes A logically ORed set of JSClassAttributes to give to the class.
@field className A null-terminated UTF8 string containing the class's name.
@field parentClass A JSClass to set as the class's parent class. Pass NULL use the default object class.
@field staticValues A JSStaticValue array containing the class's statically declared value properties. Pass NULL to specify no statically declared value properties. The array must be terminated by a JSStaticValue whose name field is NULL.
@field staticFunctions A JSStaticFunction array containing the class's statically declared function properties. Pass NULL to specify no statically declared function properties. The array must be terminated by a JSStaticFunction whose name field is NULL.
@field initialize The callback invoked when an object is first created. Use this callback to initialize the object.
@field finalize The callback invoked when an object is finalized (prepared for garbage collection). Use this callback to release resources allocated for the object, and perform other cleanup.
@field hasProperty The callback invoked when determining whether an object has a property. If this field is NULL, getProperty is called instead. The hasProperty callback enables optimization in cases where only a property's existence needs to be known, not its value, and computing its value is expensive. 
@field getProperty The callback invoked when getting a property's value.
@field setProperty The callback invoked when setting a property's value.
@field deleteProperty The callback invoked when deleting a property.
@field getPropertyNames The callback invoked when collecting the names of an object's properties.
@field callAsFunction The callback invoked when an object is called as a function.
@field hasInstance The callback invoked when an object is used as the target of an 'instanceof' expression.
@field callAsConstructor The callback invoked when an object is used as a constructor in a 'new' expression.
@field convertToType The callback invoked when converting an object to a particular JavaScript type.
@discussion The staticValues and staticFunctions arrays are the simplest and most efficient means for vending custom properties. Statically declared properties autmatically service requests like getProperty, setProperty, and getPropertyNames. Property access callbacks are required only to implement unusual properties, like array indexes, whose names are not known at compile-time.

If you named your getter function "GetX" and your setter function "SetX", you would declare a JSStaticValue array containing "X" like this:

JSStaticValue StaticValueArray[] = {
    { "X", GetX, SetX, kJSPropertyAttributeNone },
    { 0, 0, 0, 0 }
};

Standard JavaScript practice calls for storing function objects in prototypes, so they can be shared. The default JSClass created by JSClassCreate follows this idiom, instantiating objects with a shared, automatically generating prototype containing the class's function objects. The kJSClassAttributeNoAutomaticPrototype attribute specifies that a JSClass should not automatically generate such a prototype. The resulting JSClass instantiates objects with the default object prototype, and gives each instance object its own copy of the class's function objects.

A NULL callback specifies that the default object callback should substitute, except in the case of hasProperty, where it specifies that getProperty should substitute.
*/
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

/*! 
@const kJSClassDefinitionEmpty 
@abstract A JSClassDefinition structure of the current version, filled with NULL pointers and having no attributes.
@discussion Use this constant as a convenience when creating class definitions. For example, to create a class definition with only a finalize method:

JSClassDefinition definition = kJSClassDefinitionEmpty;
definition.finalize = Finalize;
*/
let kJSClassDefinitionEmpty: JSClassDefinition

/*!
@function
@abstract Creates a JavaScript class suitable for use with JSObjectMake.
@param definition A JSClassDefinition that defines the class.
@result A JSClass with the given definition. Ownership follows the Create Rule.
*/
func JSClassCreate(definition: UnsafePointer<JSClassDefinition>) -> JSClassRef

/*!
@function
@abstract Retains a JavaScript class.
@param jsClass The JSClass to retain.
@result A JSClass that is the same as jsClass.
*/
func JSClassRetain(jsClass: JSClassRef) -> JSClassRef

/*!
@function
@abstract Releases a JavaScript class.
@param jsClass The JSClass to release.
*/
func JSClassRelease(jsClass: JSClassRef)

/*!
@function
@abstract Creates a JavaScript object.
@param ctx The execution context to use.
@param jsClass The JSClass to assign to the object. Pass NULL to use the default object class.
@param data A void* to set as the object's private data. Pass NULL to specify no private data.
@result A JSObject with the given class and private data.
@discussion The default object class does not allocate storage for private data, so you must provide a non-NULL jsClass to JSObjectMake if you want your object to be able to store private data.

data is set on the created object before the intialize methods in its class chain are called. This enables the initialize methods to retrieve and manipulate data through JSObjectGetPrivate.
*/
func JSObjectMake(ctx: JSContextRef, _ jsClass: JSClassRef, _ data: UnsafeMutablePointer<Void>) -> JSObjectRef

/*!
@function
@abstract Convenience method for creating a JavaScript function with a given callback as its implementation.
@param ctx The execution context to use.
@param name A JSString containing the function's name. This will be used when converting the function to string. Pass NULL to create an anonymous function.
@param callAsFunction The JSObjectCallAsFunctionCallback to invoke when the function is called.
@result A JSObject that is a function. The object's prototype will be the default function prototype.
*/
func JSObjectMakeFunctionWithCallback(ctx: JSContextRef, _ name: JSStringRef, _ callAsFunction: JSObjectCallAsFunctionCallback!) -> JSObjectRef

/*!
@function
@abstract Convenience method for creating a JavaScript constructor.
@param ctx The execution context to use.
@param jsClass A JSClass that is the class your constructor will assign to the objects its constructs. jsClass will be used to set the constructor's .prototype property, and to evaluate 'instanceof' expressions. Pass NULL to use the default object class.
@param callAsConstructor A JSObjectCallAsConstructorCallback to invoke when your constructor is used in a 'new' expression. Pass NULL to use the default object constructor.
@result A JSObject that is a constructor. The object's prototype will be the default object prototype.
@discussion The default object constructor takes no arguments and constructs an object of class jsClass with no private data.
*/
func JSObjectMakeConstructor(ctx: JSContextRef, _ jsClass: JSClassRef, _ callAsConstructor: JSObjectCallAsConstructorCallback!) -> JSObjectRef

/*!
 @function
 @abstract Creates a JavaScript Array object.
 @param ctx The execution context to use.
 @param argumentCount An integer count of the number of arguments in arguments.
 @param arguments A JSValue array of data to populate the Array with. Pass NULL if argumentCount is 0.
 @param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
 @result A JSObject that is an Array.
 @discussion The behavior of this function does not exactly match the behavior of the built-in Array constructor. Specifically, if one argument 
 is supplied, this function returns an array with one element.
 */
@available(tvOS 7.0, *)
func JSObjectMakeArray(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef

/*!
 @function
 @abstract Creates a JavaScript Date object, as if by invoking the built-in Date constructor.
 @param ctx The execution context to use.
 @param argumentCount An integer count of the number of arguments in arguments.
 @param arguments A JSValue array of arguments to pass to the Date Constructor. Pass NULL if argumentCount is 0.
 @param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
 @result A JSObject that is a Date.
 */
@available(tvOS 7.0, *)
func JSObjectMakeDate(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef

/*!
 @function
 @abstract Creates a JavaScript Error object, as if by invoking the built-in Error constructor.
 @param ctx The execution context to use.
 @param argumentCount An integer count of the number of arguments in arguments.
 @param arguments A JSValue array of arguments to pass to the Error Constructor. Pass NULL if argumentCount is 0.
 @param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
 @result A JSObject that is a Error.
 */
@available(tvOS 7.0, *)
func JSObjectMakeError(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef

/*!
 @function
 @abstract Creates a JavaScript RegExp object, as if by invoking the built-in RegExp constructor.
 @param ctx The execution context to use.
 @param argumentCount An integer count of the number of arguments in arguments.
 @param arguments A JSValue array of arguments to pass to the RegExp Constructor. Pass NULL if argumentCount is 0.
 @param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
 @result A JSObject that is a RegExp.
 */
@available(tvOS 7.0, *)
func JSObjectMakeRegExp(ctx: JSContextRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef

/*!
@function
@abstract Creates a function with a given script as its body.
@param ctx The execution context to use.
@param name A JSString containing the function's name. This will be used when converting the function to string. Pass NULL to create an anonymous function.
@param parameterCount An integer count of the number of parameter names in parameterNames.
@param parameterNames A JSString array containing the names of the function's parameters. Pass NULL if parameterCount is 0.
@param body A JSString containing the script to use as the function's body.
@param sourceURL A JSString containing a URL for the script's source file. This is only used when reporting exceptions. Pass NULL if you do not care to include source file information in exceptions.
@param startingLineNumber An integer value specifying the script's starting line number in the file located at sourceURL. This is only used when reporting exceptions. The value is one-based, so the first line is line 1 and invalid values are clamped to 1.
@param exception A pointer to a JSValueRef in which to store a syntax error exception, if any. Pass NULL if you do not care to store a syntax error exception.
@result A JSObject that is a function, or NULL if either body or parameterNames contains a syntax error. The object's prototype will be the default function prototype.
@discussion Use this method when you want to execute a script repeatedly, to avoid the cost of re-parsing the script before each execution.
*/
func JSObjectMakeFunction(ctx: JSContextRef, _ name: JSStringRef, _ parameterCount: UInt32, _ parameterNames: UnsafePointer<JSStringRef>, _ body: JSStringRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef

/*!
@function
@abstract Gets an object's prototype.
@param ctx  The execution context to use.
@param object A JSObject whose prototype you want to get.
@result A JSValue that is the object's prototype.
*/
func JSObjectGetPrototype(ctx: JSContextRef, _ object: JSObjectRef) -> JSValueRef

/*!
@function
@abstract Sets an object's prototype.
@param ctx  The execution context to use.
@param object The JSObject whose prototype you want to set.
@param value A JSValue to set as the object's prototype.
*/
func JSObjectSetPrototype(ctx: JSContextRef, _ object: JSObjectRef, _ value: JSValueRef)

/*!
@function
@abstract Tests whether an object has a given property.
@param object The JSObject to test.
@param propertyName A JSString containing the property's name.
@result true if the object has a property whose name matches propertyName, otherwise false.
*/
func JSObjectHasProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef) -> Bool

/*!
@function
@abstract Gets a property from an object.
@param ctx The execution context to use.
@param object The JSObject whose property you want to get.
@param propertyName A JSString containing the property's name.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result The property's value if object has the property, otherwise the undefined value.
*/
func JSObjectGetProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef

/*!
@function
@abstract Sets a property on an object.
@param ctx The execution context to use.
@param object The JSObject whose property you want to set.
@param propertyName A JSString containing the property's name.
@param value A JSValue to use as the property's value.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@param attributes A logically ORed set of JSPropertyAttributes to give to the property.
*/
func JSObjectSetProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ value: JSValueRef, _ attributes: JSPropertyAttributes, _ exception: UnsafeMutablePointer<JSValueRef>)

/*!
@function
@abstract Deletes a property from an object.
@param ctx The execution context to use.
@param object The JSObject whose property you want to delete.
@param propertyName A JSString containing the property's name.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result true if the delete operation succeeds, otherwise false (for example, if the property has the kJSPropertyAttributeDontDelete attribute set).
*/
func JSObjectDeleteProperty(ctx: JSContextRef, _ object: JSObjectRef, _ propertyName: JSStringRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool

/*!
@function
@abstract Gets a property from an object by numeric index.
@param ctx The execution context to use.
@param object The JSObject whose property you want to get.
@param propertyIndex An integer value that is the property's name.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result The property's value if object has the property, otherwise the undefined value.
@discussion Calling JSObjectGetPropertyAtIndex is equivalent to calling JSObjectGetProperty with a string containing propertyIndex, but JSObjectGetPropertyAtIndex provides optimized access to numeric properties.
*/
func JSObjectGetPropertyAtIndex(ctx: JSContextRef, _ object: JSObjectRef, _ propertyIndex: UInt32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef

/*!
@function
@abstract Sets a property on an object by numeric index.
@param ctx The execution context to use.
@param object The JSObject whose property you want to set.
@param propertyIndex The property's name as a number.
@param value A JSValue to use as the property's value.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@discussion Calling JSObjectSetPropertyAtIndex is equivalent to calling JSObjectSetProperty with a string containing propertyIndex, but JSObjectSetPropertyAtIndex provides optimized access to numeric properties.
*/
func JSObjectSetPropertyAtIndex(ctx: JSContextRef, _ object: JSObjectRef, _ propertyIndex: UInt32, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>)

/*!
@function
@abstract Gets an object's private data.
@param object A JSObject whose private data you want to get.
@result A void* that is the object's private data, if the object has private data, otherwise NULL.
*/
func JSObjectGetPrivate(object: JSObjectRef) -> UnsafeMutablePointer<Void>

/*!
@function
@abstract Sets a pointer to private data on an object.
@param object The JSObject whose private data you want to set.
@param data A void* to set as the object's private data.
@result true if object can store private data, otherwise false.
@discussion The default object class does not allocate storage for private data. Only objects created with a non-NULL JSClass can store private data.
*/
func JSObjectSetPrivate(object: JSObjectRef, _ data: UnsafeMutablePointer<Void>) -> Bool

/*!
@function
@abstract Tests whether an object can be called as a function.
@param ctx  The execution context to use.
@param object The JSObject to test.
@result true if the object can be called as a function, otherwise false.
*/
func JSObjectIsFunction(ctx: JSContextRef, _ object: JSObjectRef) -> Bool

/*!
@function
@abstract Calls an object as a function.
@param ctx The execution context to use.
@param object The JSObject to call as a function.
@param thisObject The object to use as "this," or NULL to use the global object as "this."
@param argumentCount An integer count of the number of arguments in arguments.
@param arguments A JSValue array of arguments to pass to the function. Pass NULL if argumentCount is 0.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result The JSValue that results from calling object as a function, or NULL if an exception is thrown or object is not a function.
*/
func JSObjectCallAsFunction(ctx: JSContextRef, _ object: JSObjectRef, _ thisObject: JSObjectRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef

/*!
@function
@abstract Tests whether an object can be called as a constructor.
@param ctx  The execution context to use.
@param object The JSObject to test.
@result true if the object can be called as a constructor, otherwise false.
*/
func JSObjectIsConstructor(ctx: JSContextRef, _ object: JSObjectRef) -> Bool

/*!
@function
@abstract Calls an object as a constructor.
@param ctx The execution context to use.
@param object The JSObject to call as a constructor.
@param argumentCount An integer count of the number of arguments in arguments.
@param arguments A JSValue array of arguments to pass to the constructor. Pass NULL if argumentCount is 0.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result The JSObject that results from calling object as a constructor, or NULL if an exception is thrown or object is not a constructor.
*/
func JSObjectCallAsConstructor(ctx: JSContextRef, _ object: JSObjectRef, _ argumentCount: Int, _ arguments: UnsafePointer<JSValueRef>, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef

/*!
@function
@abstract Gets the names of an object's enumerable properties.
@param ctx The execution context to use.
@param object The object whose property names you want to get.
@result A JSPropertyNameArray containing the names object's enumerable properties. Ownership follows the Create Rule.
*/
func JSObjectCopyPropertyNames(ctx: JSContextRef, _ object: JSObjectRef) -> JSPropertyNameArrayRef

/*!
@function
@abstract Retains a JavaScript property name array.
@param array The JSPropertyNameArray to retain.
@result A JSPropertyNameArray that is the same as array.
*/
func JSPropertyNameArrayRetain(array: JSPropertyNameArrayRef) -> JSPropertyNameArrayRef

/*!
@function
@abstract Releases a JavaScript property name array.
@param array The JSPropetyNameArray to release.
*/
func JSPropertyNameArrayRelease(array: JSPropertyNameArrayRef)

/*!
@function
@abstract Gets a count of the number of items in a JavaScript property name array.
@param array The array from which to retrieve the count.
@result An integer count of the number of names in array.
*/
func JSPropertyNameArrayGetCount(array: JSPropertyNameArrayRef) -> Int

/*!
@function
@abstract Gets a property name at a given index in a JavaScript property name array.
@param array The array from which to retrieve the property name.
@param index The index of the property name to retrieve.
@result A JSStringRef containing the property name.
*/
func JSPropertyNameArrayGetNameAtIndex(array: JSPropertyNameArrayRef, _ index: Int) -> JSStringRef

/*!
@function
@abstract Adds a property name to a JavaScript property name accumulator.
@param accumulator The accumulator object to which to add the property name.
@param propertyName The property name to add.
*/
func JSPropertyNameAccumulatorAddName(accumulator: JSPropertyNameAccumulatorRef, _ propertyName: JSStringRef)

/*!
@typedef JSChar
@abstract A Unicode character.
*/
typealias JSChar = UInt16

/*!
@function
@abstract         Creates a JavaScript string from a buffer of Unicode characters.
@param chars      The buffer of Unicode characters to copy into the new JSString.
@param numChars   The number of characters to copy from the buffer pointed to by chars.
@result           A JSString containing chars. Ownership follows the Create Rule.
*/
func JSStringCreateWithCharacters(chars: UnsafePointer<JSChar>, _ numChars: Int) -> JSStringRef

/*!
@function
@abstract         Creates a JavaScript string from a null-terminated UTF8 string.
@param string     The null-terminated UTF8 string to copy into the new JSString.
@result           A JSString containing string. Ownership follows the Create Rule.
*/
func JSStringCreateWithUTF8CString(string: UnsafePointer<Int8>) -> JSStringRef

/*!
@function
@abstract         Retains a JavaScript string.
@param string     The JSString to retain.
@result           A JSString that is the same as string.
*/
func JSStringRetain(string: JSStringRef) -> JSStringRef

/*!
@function
@abstract         Releases a JavaScript string.
@param string     The JSString to release.
*/
func JSStringRelease(string: JSStringRef)

/*!
@function
@abstract         Returns the number of Unicode characters in a JavaScript string.
@param string     The JSString whose length (in Unicode characters) you want to know.
@result           The number of Unicode characters stored in string.
*/
func JSStringGetLength(string: JSStringRef) -> Int

/*!
@function
@abstract         Returns a pointer to the Unicode character buffer that 
 serves as the backing store for a JavaScript string.
@param string     The JSString whose backing store you want to access.
@result           A pointer to the Unicode character buffer that serves as string's 
 backing store, which will be deallocated when string is deallocated.
*/
func JSStringGetCharactersPtr(string: JSStringRef) -> UnsafePointer<JSChar>

/*!
@function
@abstract Returns the maximum number of bytes a JavaScript string will 
 take up if converted into a null-terminated UTF8 string.
@param string The JSString whose maximum converted size (in bytes) you 
 want to know.
@result The maximum number of bytes that could be required to convert string into a 
 null-terminated UTF8 string. The number of bytes that the conversion actually ends 
 up requiring could be less than this, but never more.
*/
func JSStringGetMaximumUTF8CStringSize(string: JSStringRef) -> Int

/*!
@function
@abstract Converts a JavaScript string into a null-terminated UTF8 string, 
 and copies the result into an external byte buffer.
@param string The source JSString.
@param buffer The destination byte buffer into which to copy a null-terminated 
 UTF8 representation of string. On return, buffer contains a UTF8 string 
 representation of string. If bufferSize is too small, buffer will contain only 
 partial results. If buffer is not at least bufferSize bytes in size, 
 behavior is undefined. 
@param bufferSize The size of the external buffer in bytes.
@result The number of bytes written into buffer (including the null-terminator byte).
*/
func JSStringGetUTF8CString(string: JSStringRef, _ buffer: UnsafeMutablePointer<Int8>, _ bufferSize: Int) -> Int

/*!
@function
@abstract     Tests whether two JavaScript strings match.
@param a      The first JSString to test.
@param b      The second JSString to test.
@result       true if the two strings match, otherwise false.
*/
func JSStringIsEqual(a: JSStringRef, _ b: JSStringRef) -> Bool

/*!
@function
@abstract     Tests whether a JavaScript string matches a null-terminated UTF8 string.
@param a      The JSString to test.
@param b      The null-terminated UTF8 string to test.
@result       true if the two strings match, otherwise false.
*/
func JSStringIsEqualToUTF8CString(a: JSStringRef, _ b: UnsafePointer<Int8>) -> Bool

/*!
@function
@abstract         Creates a JavaScript string from a CFString.
@discussion       This function is optimized to take advantage of cases when 
 CFStringGetCharactersPtr returns a valid pointer.
@param string     The CFString to copy into the new JSString.
@result           A JSString containing string. Ownership follows the Create Rule.
*/
func JSStringCreateWithCFString(string: CFString!) -> JSStringRef

/*!
@function
@abstract         Creates a CFString from a JavaScript string.
@param alloc      The alloc parameter to pass to CFStringCreate.
@param string     The JSString to copy into the new CFString.
@result           A CFString containing string. Ownership follows the Create Rule.
*/
func JSStringCopyCFString(alloc: CFAllocator!, _ string: JSStringRef) -> CFString!

/*!
@interface
@discussion A JSValue is a reference to a value within the JavaScript object space of a
 JSVirtualMachine. All instances of JSValue originate from a JSContext and
 hold a strong reference to this JSContext. As long as any value associated with 
 a particular JSContext is retained, that JSContext will remain alive. 
 Where an instance method is invoked upon a JSValue, and this returns another 
 JSValue, the returned JSValue will originate from the same JSContext as the 
 JSValue on which the method was invoked.

 All JavaScript values are associated with a particular JSVirtualMachine
 (the associated JSVirtualMachine is available indirectly via the context
 property). An instance of JSValue may only be passed as an argument to
 methods on instances of JSValue and JSContext that belong to the same
 JSVirtualMachine - passing a JSValue to a method on an object originating
 from a different JSVirtualMachine will result in an Objective-C exception
 being raised.
*/
@available(tvOS 7.0, *)
class JSValue : NSObject {

  /*!
  @property
  @abstract The JSContext that this value originates from.
  */
  var context: JSContext! { get }

  /*!
  @methodgroup Creating JavaScript Values
  */
  /*!
  @method
  @abstract Create a JSValue by converting an Objective-C object.
  @discussion The resulting JSValue retains the provided Objective-C object.
  @param value The Objective-C object to be converted.
  @result The new JSValue.
  */
  /*not inherited*/ init!(object value: AnyObject!, `in` context: JSContext!)

  /*!
  @method
  @abstract Create a JavaScript value from a BOOL primitive.
  @param value
  @param context The JSContext in which the resulting JSValue will be created.
  @result The new JSValue representing the equivalent boolean value.
  */
  /*not inherited*/ init!(bool value: Bool, `in` context: JSContext!)

  /*!
  @method
  @abstract Create a JavaScript value from a double primitive.
  @param value
  @param context The JSContext in which the resulting JSValue will be created.
  @result The new JSValue representing the equivalent boolean value.
  */
  /*not inherited*/ init!(double value: Double, `in` context: JSContext!)

  /*!
  @method
  @abstract Create a JavaScript value from an <code>int32_t</code> primitive.
  @param value
  @param context The JSContext in which the resulting JSValue will be created.
  @result The new JSValue representing the equivalent boolean value.
  */
  /*not inherited*/ init!(int32 value: Int32, `in` context: JSContext!)

  /*!
  @method
  @abstract Create a JavaScript value from a <code>uint32_t</code> primitive.
  @param value
  @param context The JSContext in which the resulting JSValue will be created.
  @result The new JSValue representing the equivalent boolean value.
  */
  /*not inherited*/ init!(uInt32 value: UInt32, `in` context: JSContext!)

  /*!
  @method
  @abstract Create a new, empty JavaScript object.
  @param context The JSContext in which the resulting object will be created.
  @result The new JavaScript object.
  */
  /*not inherited*/ init!(newObjectIn context: JSContext!)

  /*!
  @method
  @abstract Create a new, empty JavaScript array.
  @param context The JSContext in which the resulting array will be created.
  @result The new JavaScript array.
  */
  /*not inherited*/ init!(newArrayIn context: JSContext!)

  /*!
  @method
  @abstract Create a new JavaScript regular expression object.
  @param pattern The regular expression pattern.
  @param flags The regular expression flags.
  @param context The JSContext in which the resulting regular expression object will be created.
  @result The new JavaScript regular expression object.
  */
  /*not inherited*/ init!(newRegularExpressionFromPattern pattern: String!, flags: String!, `in` context: JSContext!)

  /*!
  @method
  @abstract Create a new JavaScript error object.
  @param message The error message.
  @param context The JSContext in which the resulting error object will be created.
  @result The new JavaScript error object.
  */
  /*not inherited*/ init!(newErrorFromMessage message: String!, `in` context: JSContext!)

  /*!
  @method
  @abstract Create the JavaScript value <code>null</code>.
  @param context The JSContext to which the resulting JSValue belongs.
  @result The JSValue representing the JavaScript value <code>null</code>.
  */
  /*not inherited*/ init!(nullIn context: JSContext!)

  /*!
  @method
  @abstract Create the JavaScript value <code>undefined</code>.
  @param context The JSContext to which the resulting JSValue belongs.
  @result The JSValue representing the JavaScript value <code>undefined</code>.
  */
  /*not inherited*/ init!(undefinedIn context: JSContext!)

  /*!
  @methodgroup Converting to Objective-C Types
  @discussion When converting between JavaScript values and Objective-C objects a copy is
   performed. Values of types listed below are copied to the corresponding
   types on conversion in each direction. For NSDictionaries, entries in the
   dictionary that are keyed by strings are copied onto a JavaScript object.
   For dictionaries and arrays, conversion is recursive, with the same object
   conversion being applied to all entries in the collection.
  
  <pre>
  @textblock
     Objective-C type  |   JavaScript type
   --------------------+---------------------
           nil         |     undefined
          NSNull       |        null
         NSString      |       string
         NSNumber      |   number, boolean
       NSDictionary    |   Object object
         NSArray       |    Array object
          NSDate       |     Date object
         NSBlock (1)   |   Function object (1)
            id (2)     |   Wrapper object (2)
          Class (3)    | Constructor object (3)
  @/textblock
  </pre>
  
   (1) Instances of NSBlock with supported arguments types will be presented to
   JavaScript as a callable Function object. For more information on supported
   argument types see JSExport.h. If a JavaScript Function originating from an
   Objective-C block is converted back to an Objective-C object the block will
   be returned. All other JavaScript functions will be converted in the same
   manner as a JavaScript object of type Object.
  
   (2) For Objective-C instances that do not derive from the set of types listed
   above, a wrapper object to provide a retaining handle to the Objective-C
   instance from JavaScript. For more information on these wrapper objects, see
   JSExport.h. When a JavaScript wrapper object is converted back to Objective-C
   the Objective-C instance being retained by the wrapper is returned.
  
   (3) For Objective-C Class objects a constructor object containing exported
   class methods will be returned. See JSExport.h for more information on
   constructor objects.
  
   For all methods taking arguments of type id, arguments will be converted
   into a JavaScript value according to the above conversion.
  */
  /*!
  @method
  @abstract Convert this JSValue to an Objective-C object.
  @discussion The JSValue is converted to an Objective-C object according 
   to the conversion rules specified above.
  @result The Objective-C representation of this JSValue.
  */
  func toObject() -> AnyObject!

  /*!
  @method
  @abstract Convert a JSValue to an Objective-C object of a specific class.
  @discussion The JSValue is converted to an Objective-C object of the specified Class. 
   If the result is not of the specified Class then <code>nil</code> will be returned.
  @result An Objective-C object of the specified Class or <code>nil</code>.
  */
  func toObjectOf(expectedClass: AnyClass!) -> AnyObject!

  /*!
  @method
  @abstract Convert a JSValue to a boolean.
  @discussion The JSValue is converted to a boolean according to the rules specified 
   by the JavaScript language.
  @result The boolean result of the conversion.
  */
  func toBool() -> Bool

  /*!
  @method
  @abstract Convert a JSValue to a double.
  @discussion The JSValue is converted to a number according to the rules specified 
   by the JavaScript language.
  @result The double result of the conversion.
  */
  func toDouble() -> Double

  /*!
  @method
  @abstract Convert a JSValue to an <code>int32_t</code>.
  @discussion The JSValue is converted to an integer according to the rules specified 
   by the JavaScript language.
  @result The <code>int32_t</code> result of the conversion.
  */
  func toInt32() -> Int32

  /*!
  @method
  @abstract Convert a JSValue to a <code>uint32_t</code>.
  @discussion The JSValue is converted to an integer according to the rules specified 
   by the JavaScript language.
  @result The <code>uint32_t</code> result of the conversion.
  */
  func toUInt32() -> UInt32

  /*!
  @method
  @abstract Convert a JSValue to a NSNumber.
  @discussion If the JSValue represents a boolean, a NSNumber value of YES or NO 
   will be returned. For all other types the value will be converted to a number according 
   to the rules specified by the JavaScript language.
  @result The NSNumber result of the conversion.
  */
  func toNumber() -> NSNumber!

  /*!
  @method
  @abstract Convert a JSValue to a NSString.
  @discussion The JSValue is converted to a string according to the rules specified 
   by the JavaScript language.
  @result The NSString containing the result of the conversion.
  */
  func toString() -> String!

  /*!
  @method
  @abstract Convert a JSValue to a NSDate.
  @discussion The value is converted to a number representing a time interval 
   since 1970 which is then used to create a new NSDate instance.
  @result The NSDate created using the converted time interval.
  */
  func toDate() -> NSDate!

  /*!
  @method
  @abstract Convert a JSValue to a NSArray.
  @discussion If the value is <code>null</code> or <code>undefined</code> then <code>nil</code> is returned.
   If the value is not an object then a JavaScript TypeError will be thrown.
   The property <code>length</code> is read from the object, converted to an unsigned
   integer, and an NSArray of this size is allocated. Properties corresponding
   to indicies within the array bounds will be copied to the array, with
   JSValues converted to equivalent Objective-C objects as specified.
  @result The NSArray containing the recursively converted contents of the 
   converted JavaScript array.
  */
  func toArray() -> [AnyObject]!

  /*!
  @method
  @abstract Convert a JSValue to a NSDictionary.
  @discussion If the value is <code>null</code> or <code>undefined</code> then <code>nil</code> is returned.
   If the value is not an object then a JavaScript TypeError will be thrown.
   All enumerable properties of the object are copied to the dictionary, with
   JSValues converted to equivalent Objective-C objects as specified.
  @result The NSDictionary containing the recursively converted contents of
   the converted JavaScript object.
  */
  func toDictionary() -> [NSObject : AnyObject]!

  /*!
  @methodgroup Accessing Properties
  */
  /*!
  @method
  @abstract Access a property of a JSValue.
  @result The JSValue for the requested property or the JSValue <code>undefined</code> 
   if the property does not exist.
  */
  func forProperty(property: String!) -> JSValue!

  /*!
  @method
  @abstract Set a property on a JSValue.
  */
  func setValue(value: AnyObject!, forProperty property: String!)

  /*!
  @method
  @abstract Delete a property from a JSValue.
  @result YES if deletion is successful, NO otherwise.
  */
  func deleteProperty(property: String!) -> Bool

  /*!
  @method
  @abstract Check if a JSValue has a property.
  @discussion This method has the same function as the JavaScript operator <code>in</code>.
  @result Returns YES if property is present on the value.
  */
  func hasProperty(property: String!) -> Bool

  /*!
  @method
  @abstract Define properties with custom descriptors on JSValues.
  @discussion This method may be used to create a data or accessor property on an object.
   This method operates in accordance with the Object.defineProperty method in the 
   JavaScript language.
  */
  func defineProperty(property: String!, descriptor: AnyObject!)

  /*!
  @method
  @abstract Access an indexed (numerical) property on a JSValue.
  @result The JSValue for the property at the specified index. 
   Returns the JavaScript value <code>undefined</code> if no property exists at that index. 
  */
  func atIndex(index: Int) -> JSValue!

  /*!
  @method
  @abstract Set an indexed (numerical) property on a JSValue.
  @discussion For JSValues that are JavaScript arrays, indices greater than 
   UINT_MAX - 1 will not affect the length of the array.
  */
  func setValue(value: AnyObject!, at index: Int)

  /*!
  @methodgroup Checking JavaScript Types
  */
  /*!
  @method
  @abstract Check if a JSValue corresponds to the JavaScript value <code>undefined</code>.
  */
  var isUndefined: Bool { get }

  /*!
  @method
  @abstract Check if a JSValue corresponds to the JavaScript value <code>null</code>.
  */
  var isNull: Bool { get }

  /*!
  @method
  @abstract Check if a JSValue is a boolean.
  */
  var isBoolean: Bool { get }

  /*!
  @method
  @abstract Check if a JSValue is a number.
  @discussion In JavaScript, there is no differentiation between types of numbers.
   Semantically all numbers behave like doubles except in special cases like bit
   operations. 
  */
  var isNumber: Bool { get }

  /*!
  @method
  @abstract Check if a JSValue is a string.
  */
  var isString: Bool { get }

  /*!
  @method
  @abstract Check if a JSValue is an object.
  */
  var isObject: Bool { get }

  /*!
  @method
  @abstract Check if a JSValue is an array.
  */
  @available(tvOS 9.0, *)
  var isArray: Bool { get }

  /*!
  @method
  @abstract Check if a JSValue is a date.
  */
  @available(tvOS 9.0, *)
  var isDate: Bool { get }

  /*!
  @method
  @abstract Compare two JSValues using JavaScript's <code>===</code> operator.
  */
  func isEqualTo(value: AnyObject!) -> Bool

  /*!
  @method
  @abstract Compare two JSValues using JavaScript's <code>==</code> operator.
  */
  func isEqualWithTypeCoercionTo(value: AnyObject!) -> Bool

  /*!
  @method
  @abstract Check if a JSValue is an instance of another object.
  @discussion This method has the same function as the JavaScript operator <code>instanceof</code>.
   If an object other than a JSValue is passed, it will first be converted according to
   the aforementioned rules.
  */
  func isInstanceOf(value: AnyObject!) -> Bool

  /*!
  @methodgroup Calling Functions and Constructors
  */
  /*!
  @method
  @abstract Invoke a JSValue as a function.
  @discussion In JavaScript, if a function doesn't explicitly return a value then it
   implicitly returns the JavaScript value <code>undefined</code>.
  @param arguments The arguments to pass to the function.
  @result The return value of the function call. 
  */
  func callWithArguments(arguments: [AnyObject]!) -> JSValue!

  /*!
  @method
  @abstract Invoke a JSValue as a constructor.
  @discussion This is equivalent to using the <code>new</code> syntax in JavaScript.
  @param arguments The arguments to pass to the constructor.
  @result The return value of the constructor call.
  */
  func constructWithArguments(arguments: [AnyObject]!) -> JSValue!

  /*!
  @method
  @abstract Invoke a method on a JSValue.
  @discussion Accesses the property named <code>method</code> from this value and 
   calls the resulting value as a function, passing this JSValue as the <code>this</code>
   value along with the specified arguments.
  @param method The name of the method to be invoked.
  @param arguments The arguments to pass to the method.
  @result The return value of the method call.
  */
  func invokeMethod(method: String!, withArguments arguments: [AnyObject]!) -> JSValue!
  init()
}
extension JSValue {

  /*!
  @method
  @abstract Create a JSValue from a CGPoint.
  @result A newly allocated JavaScript object containing properties
   named <code>x</code> and <code>y</code>, with values from the CGPoint.
  */
  /*not inherited*/ init!(point: CGPoint, `in` context: JSContext!)

  /*!
  @method
  @abstract Create a JSValue from a NSRange.
  @result A newly allocated JavaScript object containing properties
   named <code>location</code> and <code>length</code>, with values from the NSRange.
  */
  /*not inherited*/ init!(range: NSRange, `in` context: JSContext!)

  /*!
  @method
  @abstract 
  Create a JSValue from a CGRect.
  @result A newly allocated JavaScript object containing properties
   named <code>x</code>, <code>y</code>, <code>width</code>, and <code>height</code>, with values from the CGRect.
  */
  /*not inherited*/ init!(rect: CGRect, `in` context: JSContext!)

  /*!
  @method
  @abstract Create a JSValue from a CGSize.
  @result A newly allocated JavaScript object containing properties
   named <code>width</code> and <code>height</code>, with values from the CGSize.
  */
  /*not inherited*/ init!(size: CGSize, `in` context: JSContext!)

  /*!
  @method
  @abstract Convert a JSValue to a CGPoint.
  @discussion Reads the properties named <code>x</code> and <code>y</code> from
   this JSValue, and converts the results to double.
  @result The new CGPoint.
  */
  func toPoint() -> CGPoint

  /*!
  @method
  @abstract Convert a JSValue to an NSRange.
  @discussion Reads the properties named <code>location</code> and
   <code>length</code> from this JSValue and converts the results to double.
  @result The new NSRange.
  */
  func toRange() -> NSRange

  /*!
  @method
  @abstract Convert a JSValue to a CGRect.
  @discussion Reads the properties named <code>x</code>, <code>y</code>, 
   <code>width</code>, and <code>height</code> from this JSValue and converts the results to double.
  @result The new CGRect.
  */
  func toRect() -> CGRect

  /*!
  @method
  @abstract Convert a JSValue to a CGSize.
  @discussion Reads the properties named <code>width</code> and
   <code>height</code> from this JSValue and converts the results to double.
  @result The new CGSize.
  */
  func toSize() -> CGSize
}
extension JSValue {
  func objectForKeyedSubscript(key: AnyObject!) -> JSValue!
  func objectAtIndexedSubscript(index: Int) -> JSValue!
  func setObject(object: AnyObject!, forKeyedSubscript key: protocol<NSCopying, NSObjectProtocol>!)
  func setObject(object: AnyObject!, atIndexedSubscript index: Int)
}
extension JSValue {

  /*!
  @method
  @abstract Creates a JSValue, wrapping its C API counterpart.
  @param value
  @param context
  @result The Objective-C API equivalent of the specified JSValueRef.
  */
  /*not inherited*/ init!(jsValueRef value: JSValueRef, `in` context: JSContext!)

  /*!
  @property
  @abstract Returns the C API counterpart wrapped by a JSContext.
  @result The C API equivalent of this JSValue.
  */
  var jsValueRef: JSValueRef { get }
}

/*!
@group Property Descriptor Constants
@discussion These keys may assist in creating a property descriptor for use with the
 defineProperty method on JSValue.
 Property descriptors must fit one of three descriptions:

 Data Descriptor:
  - A descriptor containing one or both of the keys <code>value</code> and <code>writable</code>,
    and optionally containing one or both of the keys <code>enumerable</code> and
    <code>configurable</code>. A data descriptor may not contain either the <code>get</code> or
    <code>set</code> key.
    A data descriptor may be used to create or modify the attributes of a
    data property on an object (replacing any existing accessor property).

 Accessor Descriptor:
  - A descriptor containing one or both of the keys <code>get</code> and <code>set</code>, and
    optionally containing one or both of the keys <code>enumerable</code> and
    <code>configurable</code>. An accessor descriptor may not contain either the <code>value</code>
    or <code>writable</code> key.
    An accessor descriptor may be used to create or modify the attributes of
    an accessor property on an object (replacing any existing data property).

 Generic Descriptor:
  - A descriptor containing one or both of the keys <code>enumerable</code> and
    <code>configurable</code>. A generic descriptor may not contain any of the keys
    <code>value</code>, <code>writable</code>, <code>get</code>, or <code>set</code>.
    A generic descriptor may be used to modify the attributes of an existing
    data or accessor property, or to create a new data property.
*/
/*!
@const 
*/
let JSPropertyDescriptorWritableKey: String

/*!
@const 
*/
let JSPropertyDescriptorEnumerableKey: String

/*!
@const 
*/
let JSPropertyDescriptorConfigurableKey: String

/*!
@const 
*/
let JSPropertyDescriptorValueKey: String

/*!
@const 
*/
let JSPropertyDescriptorGetKey: String

/*!
@const 
*/
let JSPropertyDescriptorSetKey: String

/*!
@enum JSType
@abstract     A constant identifying the type of a JSValue.
@constant     kJSTypeUndefined  The unique undefined value.
@constant     kJSTypeNull       The unique null value.
@constant     kJSTypeBoolean    A primitive boolean value, one of true or false.
@constant     kJSTypeNumber     A primitive number value.
@constant     kJSTypeString     A primitive string value.
@constant     kJSTypeObject     An object value (meaning that this JSValueRef is a JSObjectRef).
*/
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

/*!
@function
@abstract       Returns a JavaScript value's type.
@param ctx  The execution context to use.
@param value    The JSValue whose type you want to obtain.
@result         A value of type JSType that identifies value's type.
*/
func JSValueGetType(ctx: JSContextRef, _: JSValueRef) -> JSType

/*!
@function
@abstract       Tests whether a JavaScript value's type is the undefined type.
@param ctx  The execution context to use.
@param value    The JSValue to test.
@result         true if value's type is the undefined type, otherwise false.
*/
func JSValueIsUndefined(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract       Tests whether a JavaScript value's type is the null type.
@param ctx  The execution context to use.
@param value    The JSValue to test.
@result         true if value's type is the null type, otherwise false.
*/
func JSValueIsNull(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract       Tests whether a JavaScript value's type is the boolean type.
@param ctx  The execution context to use.
@param value    The JSValue to test.
@result         true if value's type is the boolean type, otherwise false.
*/
func JSValueIsBoolean(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract       Tests whether a JavaScript value's type is the number type.
@param ctx  The execution context to use.
@param value    The JSValue to test.
@result         true if value's type is the number type, otherwise false.
*/
func JSValueIsNumber(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract       Tests whether a JavaScript value's type is the string type.
@param ctx  The execution context to use.
@param value    The JSValue to test.
@result         true if value's type is the string type, otherwise false.
*/
func JSValueIsString(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract       Tests whether a JavaScript value's type is the object type.
@param ctx  The execution context to use.
@param value    The JSValue to test.
@result         true if value's type is the object type, otherwise false.
*/
func JSValueIsObject(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract Tests whether a JavaScript value is an object with a given class in its class chain.
@param ctx The execution context to use.
@param value The JSValue to test.
@param jsClass The JSClass to test against.
@result true if value is an object and has jsClass in its class chain, otherwise false.
*/
func JSValueIsObjectOfClass(ctx: JSContextRef, _ value: JSValueRef, _ jsClass: JSClassRef) -> Bool

/*!
@function
@abstract       Tests whether a JavaScript value is an array.
@param ctx      The execution context to use.
@param value    The JSValue to test.
@result         true if value is an array, otherwise false.
*/
@available(tvOS 9.0, *)
func JSValueIsArray(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract       Tests whether a JavaScript value is a date.
@param ctx      The execution context to use.
@param value    The JSValue to test.
@result         true if value is a date, otherwise false.
*/
@available(tvOS 9.0, *)
func JSValueIsDate(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract Tests whether two JavaScript values are equal, as compared by the JS == operator.
@param ctx The execution context to use.
@param a The first value to test.
@param b The second value to test.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result true if the two values are equal, false if they are not equal or an exception is thrown.
*/
func JSValueIsEqual(ctx: JSContextRef, _ a: JSValueRef, _ b: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool

/*!
@function
@abstract       Tests whether two JavaScript values are strict equal, as compared by the JS === operator.
@param ctx  The execution context to use.
@param a        The first value to test.
@param b        The second value to test.
@result         true if the two values are strict equal, otherwise false.
*/
func JSValueIsStrictEqual(ctx: JSContextRef, _ a: JSValueRef, _ b: JSValueRef) -> Bool

/*!
@function
@abstract Tests whether a JavaScript value is an object constructed by a given constructor, as compared by the JS instanceof operator.
@param ctx The execution context to use.
@param value The JSValue to test.
@param constructor The constructor to test against.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result true if value is an object constructed by constructor, as compared by the JS instanceof operator, otherwise false.
*/
func JSValueIsInstanceOfConstructor(ctx: JSContextRef, _ value: JSValueRef, _ constructor: JSObjectRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool

/*!
@function
@abstract       Creates a JavaScript value of the undefined type.
@param ctx  The execution context to use.
@result         The unique undefined value.
*/
func JSValueMakeUndefined(ctx: JSContextRef) -> JSValueRef

/*!
@function
@abstract       Creates a JavaScript value of the null type.
@param ctx  The execution context to use.
@result         The unique null value.
*/
func JSValueMakeNull(ctx: JSContextRef) -> JSValueRef

/*!
@function
@abstract       Creates a JavaScript value of the boolean type.
@param ctx  The execution context to use.
@param boolean  The bool to assign to the newly created JSValue.
@result         A JSValue of the boolean type, representing the value of boolean.
*/
func JSValueMakeBoolean(ctx: JSContextRef, _ boolean: Bool) -> JSValueRef

/*!
@function
@abstract       Creates a JavaScript value of the number type.
@param ctx  The execution context to use.
@param number   The double to assign to the newly created JSValue.
@result         A JSValue of the number type, representing the value of number.
*/
func JSValueMakeNumber(ctx: JSContextRef, _ number: Double) -> JSValueRef

/*!
@function
@abstract       Creates a JavaScript value of the string type.
@param ctx  The execution context to use.
@param string   The JSString to assign to the newly created JSValue. The
 newly created JSValue retains string, and releases it upon garbage collection.
@result         A JSValue of the string type, representing the value of string.
*/
func JSValueMakeString(ctx: JSContextRef, _ string: JSStringRef) -> JSValueRef

/*!
 @function
 @abstract       Creates a JavaScript value from a JSON formatted string.
 @param ctx      The execution context to use.
 @param string   The JSString containing the JSON string to be parsed.
 @result         A JSValue containing the parsed value, or NULL if the input is invalid.
 */
@available(tvOS 7.0, *)
func JSValueMakeFromJSONString(ctx: JSContextRef, _ string: JSStringRef) -> JSValueRef

/*!
 @function
 @abstract       Creates a JavaScript string containing the JSON serialized representation of a JS value.
 @param ctx      The execution context to use.
 @param value    The value to serialize.
 @param indent   The number of spaces to indent when nesting.  If 0, the resulting JSON will not contains newlines.  The size of the indent is clamped to 10 spaces.
 @param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
 @result         A JSString with the result of serialization, or NULL if an exception is thrown.
 */
@available(tvOS 7.0, *)
func JSValueCreateJSONString(ctx: JSContextRef, _ value: JSValueRef, _ indent: UInt32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSStringRef

/*!
@function
@abstract       Converts a JavaScript value to boolean and returns the resulting boolean.
@param ctx  The execution context to use.
@param value    The JSValue to convert.
@result         The boolean result of conversion.
*/
func JSValueToBoolean(ctx: JSContextRef, _ value: JSValueRef) -> Bool

/*!
@function
@abstract       Converts a JavaScript value to number and returns the resulting number.
@param ctx  The execution context to use.
@param value    The JSValue to convert.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result         The numeric result of conversion, or NaN if an exception is thrown.
*/
func JSValueToNumber(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> Double

/*!
@function
@abstract       Converts a JavaScript value to string and copies the result into a JavaScript string.
@param ctx  The execution context to use.
@param value    The JSValue to convert.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result         A JSString with the result of conversion, or NULL if an exception is thrown. Ownership follows the Create Rule.
*/
func JSValueToStringCopy(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSStringRef

/*!
@function
@abstract Converts a JavaScript value to object and returns the resulting object.
@param ctx  The execution context to use.
@param value    The JSValue to convert.
@param exception A pointer to a JSValueRef in which to store an exception, if any. Pass NULL if you do not care to store an exception.
@result         The JSObject result of conversion, or NULL if an exception is thrown.
*/
func JSValueToObject(ctx: JSContextRef, _ value: JSValueRef, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSObjectRef

/*!
@function
@abstract Protects a JavaScript value from garbage collection.
@param ctx The execution context to use.
@param value The JSValue to protect.
@discussion Use this method when you want to store a JSValue in a global or on the heap, where the garbage collector will not be able to discover your reference to it.
 
A value may be protected multiple times and must be unprotected an equal number of times before becoming eligible for garbage collection.
*/
func JSValueProtect(ctx: JSContextRef, _ value: JSValueRef)

/*!
@function
@abstract       Unprotects a JavaScript value from garbage collection.
@param ctx      The execution context to use.
@param value    The JSValue to unprotect.
@discussion     A value may be protected multiple times and must be unprotected an 
 equal number of times before becoming eligible for garbage collection.
*/
func JSValueUnprotect(ctx: JSContextRef, _ value: JSValueRef)

/*!
@interface
@discussion An instance of JSVirtualMachine represents a single JavaScript "object space"
 or set of execution resources. Thread safety is supported by locking the
 virtual machine, with concurrent JavaScript execution supported by allocating
 separate instances of JSVirtualMachine.
*/
@available(tvOS 7.0, *)
class JSVirtualMachine : NSObject {

  /*!
  @methodgroup Creating New Virtual Machines
  */
  /*!
  @method
  @abstract Create a new JSVirtualMachine.
  */
  init!()

  /*!
  @methodgroup Memory Management
  */
  /*!
  @method
  @abstract Notify the JSVirtualMachine of an external object relationship.
  @discussion Allows clients of JSVirtualMachine to make the JavaScript runtime aware of 
   arbitrary external Objective-C object graphs. The runtime can then use 
   this information to retain any JavaScript values that are referenced 
   from somewhere in said object graph.
  
   For correct behavior clients must make their external object graphs 
   reachable from within the JavaScript runtime. If an Objective-C object is 
   reachable from within the JavaScript runtime, all managed references 
   transitively reachable from it as recorded using
   -addManagedReference:withOwner: will be scanned by the garbage collector.
  @param object The object that the owner points to.
  @param owner The object that owns the pointed to object.
  */
  func addManagedReference(object: AnyObject!, withOwner owner: AnyObject!)

  /*!
  @method
  @abstract Notify the JSVirtualMachine that a previous object relationship no longer exists.
  @discussion The JavaScript runtime will continue to scan any references that were
   reported to it by -addManagedReference:withOwner: until those references are removed.
  @param object The object that was formerly owned.
  @param owner The former owner.
  */
  func removeManagedReference(object: AnyObject!, withOwner owner: AnyObject!)
}
