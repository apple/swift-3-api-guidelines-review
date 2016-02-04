
@available(iOS 4.0, *)
let kCVBufferPropagatedAttachmentsKey: CFString
@available(iOS 4.0, *)
let kCVBufferNonPropagatedAttachmentsKey: CFString
@available(iOS 4.0, *)
let kCVBufferMovieTimeKey: CFString
@available(iOS 4.0, *)
let kCVBufferTimeValueKey: CFString
@available(iOS 4.0, *)
let kCVBufferTimeScaleKey: CFString
typealias CVAttachmentMode = UInt32
var kCVAttachmentMode_ShouldNotPropagate: CVAttachmentMode { get }
var kCVAttachmentMode_ShouldPropagate: CVAttachmentMode { get }
class CVBuffer {
}
@available(iOS 4.0, *)
func CVBufferSetAttachment(buffer: CVBuffer, _ key: CFString, _ value: CFTypeRef, _ attachmentMode: CVAttachmentMode)
@available(iOS 4.0, *)
func CVBufferGetAttachment(buffer: CVBuffer, _ key: CFString, _ attachmentMode: UnsafeMutablePointer<CVAttachmentMode>) -> Unmanaged<CFTypeRef>?
@available(iOS 4.0, *)
func CVBufferRemoveAttachment(buffer: CVBuffer, _ key: CFString)
@available(iOS 4.0, *)
func CVBufferRemoveAllAttachments(buffer: CVBuffer)
@available(iOS 4.0, *)
func CVBufferGetAttachments(buffer: CVBuffer, _ attachmentMode: CVAttachmentMode) -> Unmanaged<CFDictionary>?
@available(iOS 4.0, *)
func CVBufferSetAttachments(buffer: CVBuffer, _ theAttachments: CFDictionary, _ attachmentMode: CVAttachmentMode)
@available(iOS 4.0, *)
func CVBufferPropagateAttachments(sourceBuffer: CVBuffer, _ destinationBuffer: CVBuffer)
