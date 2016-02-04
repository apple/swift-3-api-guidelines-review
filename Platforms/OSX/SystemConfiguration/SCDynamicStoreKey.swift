
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkGlobalEntity(allocator: CFAllocator?, _ domain: CFString, _ entity: CFString) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkInterface(allocator: CFAllocator?, _ domain: CFString) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkInterfaceEntity(allocator: CFAllocator?, _ domain: CFString, _ ifname: CFString, _ entity: CFString?) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkServiceEntity(allocator: CFAllocator?, _ domain: CFString, _ serviceID: CFString, _ entity: CFString?) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateComputerName(allocator: CFAllocator?) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateConsoleUser(allocator: CFAllocator?) -> CFString
@available(OSX 10.2, *)
func SCDynamicStoreKeyCreateHostNames(allocator: CFAllocator?) -> CFString
@available(OSX 10.2, *)
func SCDynamicStoreKeyCreateLocation(allocator: CFAllocator?) -> CFString
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateProxies(allocator: CFAllocator?) -> CFString
