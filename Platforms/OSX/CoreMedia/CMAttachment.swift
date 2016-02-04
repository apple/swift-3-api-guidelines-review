
typealias CMAttachmentBearer = CFTypeRef
typealias CMAttachmentMode = UInt32
var kCMAttachmentMode_ShouldNotPropagate: CMAttachmentMode { get }
var kCMAttachmentMode_ShouldPropagate: CMAttachmentMode { get }
@available(OSX 10.7, *)
func CMSetAttachment(target: CMAttachmentBearer, _ key: CFString, _ value: CFTypeRef?, _ attachmentMode: CMAttachmentMode)
@available(OSX 10.7, *)
func CMGetAttachment(target: CMAttachmentBearer, _ key: CFString, _ attachmentModeOut: UnsafeMutablePointer<CMAttachmentMode>) -> CFTypeRef?
@available(OSX 10.7, *)
func CMRemoveAttachment(target: CMAttachmentBearer, _ key: CFString)
@available(OSX 10.7, *)
func CMRemoveAllAttachments(target: CMAttachmentBearer)
@available(OSX 10.7, *)
func CMCopyDictionaryOfAttachments(allocator: CFAllocator?, _ target: CMAttachmentBearer, _ attachmentMode: CMAttachmentMode) -> CFDictionary?
@available(OSX 10.7, *)
func CMSetAttachments(target: CMAttachmentBearer, _ theAttachments: CFDictionary, _ attachmentMode: CMAttachmentMode)
@available(OSX 10.7, *)
func CMPropagateAttachments(source: CMAttachmentBearer, _ destination: CMAttachmentBearer)
