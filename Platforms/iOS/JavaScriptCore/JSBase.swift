
typealias JSContextGroupRef = COpaquePointer
typealias JSContextRef = COpaquePointer
typealias JSGlobalContextRef = COpaquePointer
typealias JSStringRef = COpaquePointer
typealias JSClassRef = COpaquePointer
typealias JSPropertyNameArrayRef = COpaquePointer
typealias JSPropertyNameAccumulatorRef = COpaquePointer
typealias JSValueRef = COpaquePointer
typealias JSObjectRef = COpaquePointer
func JSEvaluateScript(_ ctx: JSContextRef, _ script: JSStringRef, _ thisObject: JSObjectRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> JSValueRef
func JSCheckScriptSyntax(_ ctx: JSContextRef, _ script: JSStringRef, _ sourceURL: JSStringRef, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef>) -> Bool
func JSGarbageCollect(_ ctx: JSContextRef)
