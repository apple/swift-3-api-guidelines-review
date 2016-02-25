
@available(tvOS 7.0, *)
func JSContextGroupCreate() -> JSContextGroupRef
@available(tvOS 7.0, *)
func JSContextGroupRetain(_ group: JSContextGroupRef) -> JSContextGroupRef
@available(tvOS 7.0, *)
func JSContextGroupRelease(_ group: JSContextGroupRef)
@available(tvOS 7.0, *)
func JSGlobalContextCreate(_ globalObjectClass: JSClassRef) -> JSGlobalContextRef
@available(tvOS 7.0, *)
func JSGlobalContextCreateInGroup(_ group: JSContextGroupRef, _ globalObjectClass: JSClassRef) -> JSGlobalContextRef
func JSGlobalContextRetain(_ ctx: JSGlobalContextRef) -> JSGlobalContextRef
func JSGlobalContextRelease(_ ctx: JSGlobalContextRef)
func JSContextGetGlobalObject(_ ctx: JSContextRef) -> JSObjectRef
@available(tvOS 7.0, *)
func JSContextGetGroup(_ ctx: JSContextRef) -> JSContextGroupRef
@available(tvOS 7.0, *)
func JSContextGetGlobalContext(_ ctx: JSContextRef) -> JSGlobalContextRef
@available(tvOS 8.0, *)
func JSGlobalContextCopyName(_ ctx: JSGlobalContextRef) -> JSStringRef
@available(tvOS 8.0, *)
func JSGlobalContextSetName(_ ctx: JSGlobalContextRef, _ name: JSStringRef)
