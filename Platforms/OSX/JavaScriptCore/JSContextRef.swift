
@available(OSX 10.6, *)
func JSContextGroupCreate() -> JSContextGroupRef
@available(OSX 10.6, *)
func JSContextGroupRetain(_ group: JSContextGroupRef) -> JSContextGroupRef
@available(OSX 10.6, *)
func JSContextGroupRelease(_ group: JSContextGroupRef)
@available(OSX 10.5, *)
func JSGlobalContextCreate(_ globalObjectClass: JSClassRef) -> JSGlobalContextRef
@available(OSX 10.6, *)
func JSGlobalContextCreateInGroup(_ group: JSContextGroupRef, _ globalObjectClass: JSClassRef) -> JSGlobalContextRef
func JSGlobalContextRetain(_ ctx: JSGlobalContextRef) -> JSGlobalContextRef
func JSGlobalContextRelease(_ ctx: JSGlobalContextRef)
func JSContextGetGlobalObject(_ ctx: JSContextRef) -> JSObjectRef
@available(OSX 10.6, *)
func JSContextGetGroup(_ ctx: JSContextRef) -> JSContextGroupRef
@available(OSX 10.7, *)
func JSContextGetGlobalContext(_ ctx: JSContextRef) -> JSGlobalContextRef
@available(OSX 10.10, *)
func JSGlobalContextCopyName(_ ctx: JSGlobalContextRef) -> JSStringRef
@available(OSX 10.10, *)
func JSGlobalContextSetName(_ ctx: JSGlobalContextRef, _ name: JSStringRef)
