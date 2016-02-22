
typealias VTSession = CFTypeRef
@available(iOS 8.0, *)
func VTSessionCopySupportedPropertyDictionary(_ session: VTSession, _ supportedPropertyDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
@available(iOS 8.0, *)
let kVTPropertyTypeKey: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Enumeration: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Boolean: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Number: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatusKey: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatus_ReadOnly: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatus_ReadWrite: CFString
@available(iOS 8.0, *)
let kVTPropertyShouldBeSerializedKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueMinimumKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueMaximumKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueListKey: CFString
@available(iOS 8.0, *)
let kVTPropertyDocumentationKey: CFString
@available(iOS 8.0, *)
func VTSessionSetProperty(_ session: VTSession, _ propertyKey: CFString, _ propertyValue: CFTypeRef) -> OSStatus
@available(iOS 8.0, *)
func VTSessionCopyProperty(_ session: VTSession, _ propertyKey: CFString, _ allocator: CFAllocator?, _ propertyValueOut: UnsafeMutablePointer<Void>) -> OSStatus
@available(iOS 8.0, *)
func VTSessionSetProperties(_ session: VTSession, _ propertyDictionary: CFDictionary) -> OSStatus
@available(iOS 8.0, *)
func VTSessionCopySerializableProperties(_ session: VTSession, _ allocator: CFAllocator?, _ dictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
