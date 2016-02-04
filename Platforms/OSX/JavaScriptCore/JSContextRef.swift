
@available(OSX 10.6, *)
func JSContextGroupCreate() -> JSContextGroupRef
@available(OSX 10.6, *)
func JSContextGroupRetain(group: JSContextGroupRef) -> JSContextGroupRef
@available(OSX 10.6, *)
func JSContextGroupRelease(group: JSContextGroupRef)
@available(OSX 10.5, *)
func JSGlobalContextCreate(globalObjectClass: JSClassRef) -> JSGlobalContextRef
@available(OSX 10.6, *)
func JSGlobalContextCreateInGroup(group: JSContextGroupRef, _ globalObjectClass: JSClassRef) -> JSGlobalContextRef
func JSGlobalContextRetain(ctx: JSGlobalContextRef) -> JSGlobalContextRef
func JSGlobalContextRelease(ctx: JSGlobalContextRef)
func JSContextGetGlobalObject(ctx: JSContextRef) -> JSObjectRef
@available(OSX 10.6, *)
func JSContextGetGroup(ctx: JSContextRef) -> JSContextGroupRef
@available(OSX 10.7, *)
func JSContextGetGlobalContext(ctx: JSContextRef) -> JSGlobalContextRef
@available(OSX 10.10, *)
func JSGlobalContextCopyName(ctx: JSGlobalContextRef) -> JSStringRef
@available(OSX 10.10, *)
func JSGlobalContextSetName(ctx: JSGlobalContextRef, _ name: JSStringRef)
