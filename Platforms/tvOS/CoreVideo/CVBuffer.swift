
@available(tvOS 4.0, *)
let kCVBufferPropagatedAttachmentsKey: CFString
@available(tvOS 4.0, *)
let kCVBufferNonPropagatedAttachmentsKey: CFString
@available(tvOS 4.0, *)
let kCVBufferMovieTimeKey: CFString
@available(tvOS 4.0, *)
let kCVBufferTimeValueKey: CFString
@available(tvOS 4.0, *)
let kCVBufferTimeScaleKey: CFString
typealias CVAttachmentMode = UInt32
var kCVAttachmentMode_ShouldNotPropagate: CVAttachmentMode { get }
var kCVAttachmentMode_ShouldPropagate: CVAttachmentMode { get }
class CVBuffer {
}
@available(*, deprecated, renamed="CVBuffer")
typealias CVBufferRef = CVBuffer
@available(tvOS 4.0, *)
func CVBufferSetAttachment(buffer: CVBuffer, _ key: CFString, _ value: CFTypeRef, _ attachmentMode: CVAttachmentMode)
@available(tvOS 4.0, *)
func CVBufferGetAttachment(buffer: CVBuffer, _ key: CFString, _ attachmentMode: UnsafeMutablePointer<CVAttachmentMode>) -> Unmanaged<CFTypeRef>?
@available(tvOS 4.0, *)
func CVBufferRemoveAttachment(buffer: CVBuffer, _ key: CFString)
@available(tvOS 4.0, *)
func CVBufferRemoveAllAttachments(buffer: CVBuffer)
@available(tvOS 4.0, *)
func CVBufferGetAttachments(buffer: CVBuffer, _ attachmentMode: CVAttachmentMode) -> Unmanaged<CFDictionary>?
@available(tvOS 4.0, *)
func CVBufferSetAttachments(buffer: CVBuffer, _ theAttachments: CFDictionary, _ attachmentMode: CVAttachmentMode)
@available(tvOS 4.0, *)
func CVBufferPropagateAttachments(sourceBuffer: CVBuffer, _ destinationBuffer: CVBuffer)
