
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkGlobalEntity(_ allocator: CFAllocator?, _ domain: CFString, _ entity: CFString) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkInterface(_ allocator: CFAllocator?, _ domain: CFString) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkInterfaceEntity(_ allocator: CFAllocator?, _ domain: CFString, _ ifname: CFString, _ entity: CFString?) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkServiceEntity(_ allocator: CFAllocator?, _ domain: CFString, _ serviceID: CFString, _ entity: CFString?) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateComputerName(_ allocator: CFAllocator?) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateConsoleUser(_ allocator: CFAllocator?) -> CFString
@available(OSX 10.2, *)
func SCDynamicStoreKeyCreateHostNames(_ allocator: CFAllocator?) -> CFString
@available(OSX 10.2, *)
func SCDynamicStoreKeyCreateLocation(_ allocator: CFAllocator?) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateProxies(_ allocator: CFAllocator?) -> CFString
