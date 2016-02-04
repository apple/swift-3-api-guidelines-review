
class SecTask {
}
func SecTaskGetTypeID() -> CFTypeID
func SecTaskCreateWithAuditToken(allocator: CFAllocator?, _ token: audit_token_t) -> SecTask?
func SecTaskCreateFromSelf(allocator: CFAllocator?) -> SecTask?
func SecTaskCopyValueForEntitlement(task: SecTask, _ entitlement: CFString, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFTypeRef?
func SecTaskCopyValuesForEntitlements(task: SecTask, _ entitlements: CFArray, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary?
