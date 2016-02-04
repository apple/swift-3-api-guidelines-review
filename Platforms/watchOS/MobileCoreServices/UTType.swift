
@available(watchOS 2.0, *)
let kUTExportedTypeDeclarationsKey: CFString
@available(watchOS 2.0, *)
let kUTImportedTypeDeclarationsKey: CFString
@available(watchOS 2.0, *)
let kUTTypeIdentifierKey: CFString
@available(watchOS 2.0, *)
let kUTTypeTagSpecificationKey: CFString
@available(watchOS 2.0, *)
let kUTTypeConformsToKey: CFString
@available(watchOS 2.0, *)
let kUTTypeDescriptionKey: CFString
@available(watchOS 2.0, *)
let kUTTypeIconFileKey: CFString
@available(watchOS 2.0, *)
let kUTTypeReferenceURLKey: CFString
@available(watchOS 2.0, *)
let kUTTypeVersionKey: CFString
@available(watchOS 2.0, *)
let kUTTagClassFilenameExtension: CFString
@available(watchOS 2.0, *)
let kUTTagClassMIMEType: CFString
@available(watchOS 2.0, *)
func UTTypeCreatePreferredIdentifierForTag(inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFString>?
@available(watchOS 2.0, *)
func UTTypeCreateAllIdentifiersForTag(inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFArray>?
@available(watchOS 2.0, *)
func UTTypeCopyPreferredTagWithClass(inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFString>?
@available(watchOS 2.0, *)
func UTTypeCopyAllTagsWithClass(inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFArray>?
@available(watchOS 2.0, *)
func UTTypeEqual(inUTI1: CFString, _ inUTI2: CFString) -> Bool
@available(watchOS 2.0, *)
func UTTypeConformsTo(inUTI: CFString, _ inConformsToUTI: CFString) -> Bool
@available(watchOS 2.0, *)
func UTTypeCopyDescription(inUTI: CFString) -> Unmanaged<CFString>?
@available(watchOS 2.0, *)
func UTTypeIsDeclared(inUTI: CFString) -> Bool
@available(watchOS 2.0, *)
func UTTypeIsDynamic(inUTI: CFString) -> Bool
@available(watchOS 2.0, *)
func UTTypeCopyDeclaration(inUTI: CFString) -> Unmanaged<CFDictionary>?
@available(watchOS 2.0, *)
func UTTypeCopyDeclaringBundleURL(inUTI: CFString) -> Unmanaged<CFURL>?
