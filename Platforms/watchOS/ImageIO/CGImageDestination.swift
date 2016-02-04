
class CGImageDestination {
}
@available(*, deprecated, renamed="CGImageDestination")
typealias CGImageDestinationRef = CGImageDestination
@available(watchOS 2.0, *)
let kCGImageDestinationLossyCompressionQuality: CFString
@available(watchOS 2.0, *)
let kCGImageDestinationBackgroundColor: CFString
@available(watchOS 2.0, *)
let kCGImageDestinationImageMaxPixelSize: CFString
@available(watchOS 2.0, *)
let kCGImageDestinationEmbedThumbnail: CFString
@available(watchOS 2.0, *)
func CGImageDestinationGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGImageDestinationCopyTypeIdentifiers() -> CFArray
@available(watchOS 2.0, *)
func CGImageDestinationCreateWithDataConsumer(consumer: CGDataConsumer, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(watchOS 2.0, *)
func CGImageDestinationCreateWithData(data: CFMutableData, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(watchOS 2.0, *)
func CGImageDestinationCreateWithURL(url: CFURL, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(watchOS 2.0, *)
func CGImageDestinationSetProperties(idst: CGImageDestination, _ properties: CFDictionary?)
@available(watchOS 2.0, *)
func CGImageDestinationAddImage(idst: CGImageDestination, _ image: CGImage, _ properties: CFDictionary?)
@available(watchOS 2.0, *)
func CGImageDestinationAddImageFromSource(idst: CGImageDestination, _ isrc: CGImageSource, _ index: Int, _ properties: CFDictionary?)
@available(watchOS 2.0, *)
func CGImageDestinationFinalize(idst: CGImageDestination) -> Bool
@available(watchOS 2.0, *)
func CGImageDestinationAddImageAndMetadata(idst: CGImageDestination, _ image: CGImage, _ metadata: CGImageMetadata?, _ options: CFDictionary?)
@available(watchOS 2.0, *)
let kCGImageDestinationMetadata: CFString
@available(watchOS 2.0, *)
let kCGImageDestinationMergeMetadata: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataShouldExcludeXMP: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataShouldExcludeGPS: CFString
@available(watchOS 2.0, *)
let kCGImageDestinationDateTime: CFString
@available(watchOS 2.0, *)
let kCGImageDestinationOrientation: CFString
@available(watchOS 2.0, *)
func CGImageDestinationCopyImageSource(idst: CGImageDestination, _ isrc: CGImageSource, _ options: CFDictionary?, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
