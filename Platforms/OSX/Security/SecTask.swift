
class SecTask {
}
func SecTaskGetTypeID() -> CFTypeID
func SecTaskCreateWithAuditToken(_ allocator: CFAllocator?, _ token: audit_token_t) -> SecTask?
func SecTaskCreateFromSelf(_ allocator: CFAllocator?) -> SecTask?
func SecTaskCopyValueForEntitlement(_ task: SecTask, _ entitlement: CFString, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFTypeRef?
func SecTaskCopyValuesForEntitlements(_ task: SecTask, _ entitlements: CFArray, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary?
