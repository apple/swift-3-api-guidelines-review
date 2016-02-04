
@available(OSX 10.4, *)
let kCVBufferPropagatedAttachmentsKey: CFString
@available(OSX 10.4, *)
let kCVBufferNonPropagatedAttachmentsKey: CFString
@available(OSX 10.4, *)
let kCVBufferMovieTimeKey: CFString
@available(OSX 10.4, *)
let kCVBufferTimeValueKey: CFString
@available(OSX 10.4, *)
let kCVBufferTimeScaleKey: CFString
typealias CVAttachmentMode = UInt32
var kCVAttachmentMode_ShouldNotPropagate: CVAttachmentMode { get }
var kCVAttachmentMode_ShouldPropagate: CVAttachmentMode { get }
class CVBuffer {
}
@available(*, deprecated, renamed="CVBuffer")
typealias CVBufferRef = CVBuffer
@available(OSX 10.4, *)
func CVBufferSetAttachment(buffer: CVBuffer, _ key: CFString, _ value: CFTypeRef, _ attachmentMode: CVAttachmentMode)
@available(OSX 10.4, *)
func CVBufferGetAttachment(buffer: CVBuffer, _ key: CFString, _ attachmentMode: UnsafeMutablePointer<CVAttachmentMode>) -> Unmanaged<CFTypeRef>?
@available(OSX 10.4, *)
func CVBufferRemoveAttachment(buffer: CVBuffer, _ key: CFString)
@available(OSX 10.4, *)
func CVBufferRemoveAllAttachments(buffer: CVBuffer)
@available(OSX 10.4, *)
func CVBufferGetAttachments(buffer: CVBuffer, _ attachmentMode: CVAttachmentMode) -> Unmanaged<CFDictionary>?
@available(OSX 10.4, *)
func CVBufferSetAttachments(buffer: CVBuffer, _ theAttachments: CFDictionary, _ attachmentMode: CVAttachmentMode)
@available(OSX 10.4, *)
func CVBufferPropagateAttachments(sourceBuffer: CVBuffer, _ destinationBuffer: CVBuffer)
