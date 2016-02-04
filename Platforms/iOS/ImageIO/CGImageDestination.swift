
class CGImageDestination {
}
@available(iOS 4.0, *)
let kCGImageDestinationLossyCompressionQuality: CFString
@available(iOS 4.0, *)
let kCGImageDestinationBackgroundColor: CFString
@available(iOS 8.0, *)
let kCGImageDestinationImageMaxPixelSize: CFString
@available(iOS 8.0, *)
let kCGImageDestinationEmbedThumbnail: CFString
@available(iOS 4.0, *)
func CGImageDestinationGetTypeID() -> CFTypeID
@available(iOS 4.0, *)
func CGImageDestinationCopyTypeIdentifiers() -> CFArray
@available(iOS 4.0, *)
func CGImageDestinationCreateWithDataConsumer(consumer: CGDataConsumer, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(iOS 4.0, *)
func CGImageDestinationCreateWithData(data: CFMutableData, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(iOS 4.0, *)
func CGImageDestinationCreateWithURL(url: CFURL, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(iOS 4.0, *)
func CGImageDestinationSetProperties(idst: CGImageDestination, _ properties: CFDictionary?)
@available(iOS 4.0, *)
func CGImageDestinationAddImage(idst: CGImageDestination, _ image: CGImage, _ properties: CFDictionary?)
@available(iOS 4.0, *)
func CGImageDestinationAddImageFromSource(idst: CGImageDestination, _ isrc: CGImageSource, _ index: Int, _ properties: CFDictionary?)
@available(iOS 4.0, *)
func CGImageDestinationFinalize(idst: CGImageDestination) -> Bool
@available(iOS 7.0, *)
func CGImageDestinationAddImageAndMetadata(idst: CGImageDestination, _ image: CGImage, _ metadata: CGImageMetadata?, _ options: CFDictionary?)
@available(iOS 7.0, *)
let kCGImageDestinationMetadata: CFString
@available(iOS 7.0, *)
let kCGImageDestinationMergeMetadata: CFString
@available(iOS 7.0, *)
let kCGImageMetadataShouldExcludeXMP: CFString
@available(iOS 8.0, *)
let kCGImageMetadataShouldExcludeGPS: CFString
@available(iOS 7.0, *)
let kCGImageDestinationDateTime: CFString
@available(iOS 7.0, *)
let kCGImageDestinationOrientation: CFString
@available(iOS 7.0, *)
func CGImageDestinationCopyImageSource(idst: CGImageDestination, _ isrc: CGImageSource, _ options: CFDictionary?, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
