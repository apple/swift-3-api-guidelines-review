
@available(tvOS 3.0, *)
let kUTExportedTypeDeclarationsKey: CFString
@available(tvOS 3.0, *)
let kUTImportedTypeDeclarationsKey: CFString
@available(tvOS 3.0, *)
let kUTTypeIdentifierKey: CFString
@available(tvOS 3.0, *)
let kUTTypeTagSpecificationKey: CFString
@available(tvOS 3.0, *)
let kUTTypeConformsToKey: CFString
@available(tvOS 3.0, *)
let kUTTypeDescriptionKey: CFString
@available(tvOS 3.0, *)
let kUTTypeIconFileKey: CFString
@available(tvOS 3.0, *)
let kUTTypeReferenceURLKey: CFString
@available(tvOS 3.0, *)
let kUTTypeVersionKey: CFString
@available(tvOS 3.0, *)
let kUTTagClassFilenameExtension: CFString
@available(tvOS 3.0, *)
let kUTTagClassMIMEType: CFString
@available(tvOS 3.0, *)
func UTTypeCreatePreferredIdentifierForTag(_ inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFString>?
@available(tvOS 3.0, *)
func UTTypeCreateAllIdentifiersForTag(_ inTagClass: CFString, _ inTag: CFString, _ inConformingToUTI: CFString?) -> Unmanaged<CFArray>?
@available(tvOS 3.0, *)
func UTTypeCopyPreferredTagWithClass(_ inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFString>?
@available(tvOS 8.0, *)
func UTTypeCopyAllTagsWithClass(_ inUTI: CFString, _ inTagClass: CFString) -> Unmanaged<CFArray>?
@available(tvOS 3.0, *)
func UTTypeEqual(_ inUTI1: CFString, _ inUTI2: CFString) -> Bool
@available(tvOS 3.0, *)
func UTTypeConformsTo(_ inUTI: CFString, _ inConformsToUTI: CFString) -> Bool
@available(tvOS 3.0, *)
func UTTypeCopyDescription(_ inUTI: CFString) -> Unmanaged<CFString>?
@available(tvOS 8.0, *)
func UTTypeIsDeclared(_ inUTI: CFString) -> Bool
@available(tvOS 8.0, *)
func UTTypeIsDynamic(_ inUTI: CFString) -> Bool
@available(tvOS 3.0, *)
func UTTypeCopyDeclaration(_ inUTI: CFString) -> Unmanaged<CFDictionary>?
@available(tvOS 3.0, *)
func UTTypeCopyDeclaringBundleURL(_ inUTI: CFString) -> Unmanaged<CFURL>?
